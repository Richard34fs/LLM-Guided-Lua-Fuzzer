import subprocess
import tempfile
import os
import re
from pathlib import Path
from typing import Tuple, Optional, Dict
from dataclasses import dataclass

from coverage_manager import CoverageManager, CoverageReport

@dataclass
class ExecutionResult:
    success: bool
    syntax_error: bool
    runtime_error: bool
    bug_found: bool
    bug_type: Optional[str] = None
    coverage_report: Optional[CoverageReport] = None
    output: str = ""
    error_message: str = ""
    sanitizer_report: str = ""
    
    @property
    def coverage(self) -> float:
        return self.coverage_report.total_coverage if self.coverage_report else 0.0
    
    @property
    def lines_covered(self) -> int:
        return self.coverage_report.total_hits if self.coverage_report else 0
    
    @property
    def total_lines(self) -> int:
        return self.coverage_report.total_lines if self.coverage_report else 0

class LuaExecutor:
    def __init__(self, 
                 lua_coverage_bin="./lua-coverage-install/bin/lua",
                 lua_sanitized_bin="./lua-sanitized-install/bin/lua",
                 timeout=2):
        
        self.lua_coverage_bin = os.path.abspath(lua_coverage_bin)
        self.lua_sanitized_bin = os.path.abspath(lua_sanitized_bin)
        self.timeout = timeout
        
        if not os.path.exists(self.lua_coverage_bin):
            raise FileNotFoundError(f"Coverage Lua binary not found: {self.lua_coverage_bin}")
        if not os.path.exists(self.lua_sanitized_bin):
            raise FileNotFoundError(f"Sanitized Lua binary not found: {self.lua_sanitized_bin}")

        install_base = Path(self.lua_coverage_bin).parent.parent.parent
        self.lua_source_dir = install_base / "lua-5.4.8-coverage" / "src"
        
        if not self.lua_source_dir.exists():
             self.lua_source_dir = Path("lua-5.4.8-coverage/src").absolute()
        
        print("Lua executor initialized")
        print(f"Coverage binary: {self.lua_coverage_bin}")
        print(f"GCOV Source dir: {self.lua_source_dir}")
        
        self.coverage_manager = CoverageManager(str(self.lua_source_dir))
    
    def check_syntax(self, lua_code: str) -> Tuple[bool, str]:
        with tempfile.NamedTemporaryFile(mode='w', suffix='.lua', delete=False, encoding='utf-8') as f:
            f.write(lua_code)
            temp_file = f.name
        
        try:
            result = subprocess.run(
                [self.lua_coverage_bin, '-e', f'assert(loadfile("{temp_file}"))'],
                capture_output=True,
                text=True,
                timeout=2
            )
            
            if result.returncode != 0:
                error_msg = result.stderr.strip()
                if error_msg:
                    error_msg = error_msg.replace(temp_file, "<script>")
                return False, error_msg
            return True, ""
        except Exception as e:
            return False, str(e)
        finally:
            try:
                os.unlink(temp_file)
            except:
                pass

    def execute_with_coverage(self, lua_code: str, code_name: str = "mutated") -> ExecutionResult:
        syntax_valid, syntax_error = self.check_syntax(lua_code)
        if not syntax_valid:
            return ExecutionResult(False, True, False, False, error_message=syntax_error)
        
        self.coverage_manager.reset_coverage()
        
        with tempfile.NamedTemporaryFile(mode='w', suffix='.lua', delete=False, encoding='utf-8') as f:
            f.write(lua_code)
            temp_file = f.name

        try:
            env = os.environ.copy()
            env['LUA_PATH'] = ";;" 
            
            result = subprocess.run(
                [self.lua_coverage_bin, temp_file],
                capture_output=True,
                text=True,
                timeout=self.timeout,
                env=env
            )
            
            runtime_error = result.returncode != 0
            
            report = self.coverage_manager.collect_coverage()
            
            return ExecutionResult(
                success=not runtime_error,
                syntax_error=False,
                runtime_error=runtime_error,
                bug_found=False,
                coverage_report=report,
                output=result.stdout,
                error_message=result.stderr if runtime_error else ""
            )

        except subprocess.TimeoutExpired:
            return ExecutionResult(False, False, True, False, error_message="Timeout")
        finally:
            if os.path.exists(temp_file):
                os.unlink(temp_file)

    def execute_with_sanitizer(self, lua_code: str) -> ExecutionResult:
        syntax_valid, syntax_error = self.check_syntax(lua_code)
        if not syntax_valid:
            return ExecutionResult(False, True, False, False, error_message=syntax_error)
        
        with tempfile.NamedTemporaryFile(mode='w', suffix='.lua', delete=False, encoding='utf-8') as f:
            f.write(lua_code)
            temp_file = f.name
        
        try:
            env = os.environ.copy()
            env['ASAN_OPTIONS'] = "detect_leaks=1:halt_on_error=0:abort_on_error=0:print_summary=1"
            env['UBSAN_OPTIONS'] = "print_stacktrace=1:halt_on_error=0:abort_on_error=0"
            
            result = subprocess.run(
                [self.lua_sanitized_bin, temp_file],
                capture_output=True,
                text=True,
                timeout=self.timeout,
                env=env
            )
            
            bug_found, bug_type, sanitizer_report = self._parse_sanitizer_output(result.stderr)
            runtime_error = result.returncode != 0 and not bug_found
            
            return ExecutionResult(
                success=result.returncode == 0,
                syntax_error=False,
                runtime_error=runtime_error,
                bug_found=bug_found,
                bug_type=bug_type,
                output=result.stdout,
                error_message=result.stderr if runtime_error else "",
                sanitizer_report=sanitizer_report
            )
            
        except subprocess.TimeoutExpired:
            return ExecutionResult(False, False, True, False, error_message="Timeout")
        finally:
            if os.path.exists(temp_file):
                os.unlink(temp_file)

    def _parse_sanitizer_output(self, error_output: str) -> Tuple[bool, Optional[str], str]:
        if not error_output:
            return False, None, ""
        
        sanitizer_patterns = {
            'heap-buffer-overflow': r'heap-buffer-overflow',
            'heap-use-after-free': r'heap-use-after-free',
            'stack-buffer-overflow': r'stack-buffer-overflow',
            'global-buffer-overflow': r'global-buffer-overflow',
            'use-after-return': r'stack-use-after-return',
            'use-after-scope': r'stack-use-after-scope',
            'memory-leak': r'detected memory leaks',
            'double-free': r'attempting double-free',
            'invalid-free': r'attempting free on address',
            'null-pointer-dereference': r'SEGV on unknown address 0x0+\b',
            'division-by-zero': r'division by zero',
            'integer-overflow': r'signed integer overflow',
            'undefined-behavior': r'runtime error',
            'segmentation-fault': r'Segmentation fault|SIGSEGV',
            'abort': r'SIGABRT|Aborted'
        }
        
        bug_type = None
        for bug_name, pattern in sanitizer_patterns.items():
            if re.search(pattern, error_output, re.IGNORECASE):
                bug_type = bug_name
                break
        
        if bug_type is None and ('ASan' in error_output or 'Sanitizer' in error_output):
             bug_type = 'unknown-sanitizer-error'
             
        if bug_type:
            return True, bug_type, error_output[:1000]
        return False, None, ""

def main():
    try:
        executor = LuaExecutor()
        print("Executor initialized")
        res = executor.execute_with_coverage("print('Hello Coverage')")
        print(f"Coverage: {res.coverage:.2f}%")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()