import sys
import os
import time
import signal
import argparse
from datetime import datetime, timedelta
from pathlib import Path
import json

from llm import LLMMutator
from queue_manager import QueueManager
from executor import LuaExecutor

class FuzzingStats:
    def __init__(self):
        self.start_time = datetime.now()
        self.total_mutations = 0
        self.syntax_errors = 0
        self.runtime_errors = 0
        self.coverage_improvements = 0
        self.bugs_found = 0
        self.bug_types = {}
        self.detailed_bugs = {} 
        
        self.executions_per_second = 0.0
        self.llm_time = 0.0
        self.execution_time = 0.0
        self.initial_coverage = 0.0
        self.max_coverage = 0.0
        
        self.original_coverage_history = []
        self.mutated_coverage_history = []
        self.current_iteration = 0
    
    def add_bug(self, bug_type: str, filename: str):
        self.bugs_found += 1
        
        if bug_type not in self.bug_types:
            self.bug_types[bug_type] = 0
        self.bug_types[bug_type] += 1
        
        if bug_type not in self.detailed_bugs:
            self.detailed_bugs[bug_type] = []
        
        if filename not in self.detailed_bugs[bug_type]:
            self.detailed_bugs[bug_type].append(filename)
    
    def update_coverage(self, coverage: float, is_original: bool = False):
        if coverage > self.max_coverage:
            self.max_coverage = coverage
        
        if is_original:
            self.original_coverage_history.append((self.current_iteration, coverage))
        else:
            self.mutated_coverage_history.append((self.current_iteration, coverage))
    
    def get_runtime(self) -> timedelta:
        return datetime.now() - self.start_time
    
    def get_summary(self) -> dict:
        runtime = self.get_runtime()
        runtime_seconds = runtime.total_seconds()
        
        if runtime_seconds > 0:
            self.executions_per_second = self.total_mutations / runtime_seconds
        
        return {
            'runtime': str(runtime),
            'runtime_seconds': runtime_seconds,
            'total_mutations': self.total_mutations,
            'syntax_errors': self.syntax_errors,
            'runtime_errors': self.runtime_errors,
            'coverage_improvements': self.coverage_improvements,
            'bugs_found': self.bugs_found,
            'unique_bug_types': len(self.bug_types),
            'bug_types': self.bug_types,
            'executions_per_second': self.executions_per_second,
            'llm_time_seconds': self.llm_time,
            'execution_time_seconds': self.execution_time,
            'initial_coverage': self.initial_coverage,
            'max_coverage': self.max_coverage,
            'coverage_improvement': self.max_coverage - self.initial_coverage
        }

class LuaFuzzer:
    def __init__(self, duration_minutes: int = 60, verbose: bool = True):
        self.duration = timedelta(minutes=duration_minutes)
        self.verbose = verbose
        self.running = True
        self.stats = FuzzingStats()
        
        print("Initializing Lua LLM Fuzzer")
        print(f"Fuzzing duration: {duration_minutes} minutes")
        
        coverage_bin = os.path.abspath("./lua-coverage-install/bin/lua")
        sanitized_bin = os.path.abspath("./lua-sanitized-install/bin/lua")
        
        if not os.path.exists(coverage_bin) or not os.path.exists(sanitized_bin):
            print("Lua binaries not found. Please run ./quick-build-lua.sh")
            sys.exit(1)
        
        self.mutator = LLMMutator()
        self.queue = QueueManager()
        self.executor = LuaExecutor()
        
        signal.signal(signal.SIGINT, self._signal_handler)
        signal.signal(signal.SIGTERM, self._signal_handler)
    
    def _signal_handler(self, signum, frame):
        print("Interrupt received, finishing current iteration")
        self.running = False
    
    def _calculate_seed_coverage_if_needed(self, seed):
        if seed.coverage > 0 or seed.lines_covered > 0:
            return
        
        if self.verbose:
            print(f"Calculating initial coverage for: {seed.filename}")
        
        try:
            with open(seed.path, 'r', encoding='utf-8') as f:
                code = f.read()
        except Exception as e:
            print(f"Failed to read seed: {e}")
            return
        
        result = self.executor.execute_with_coverage(code)
        
        if result.success and not result.syntax_error:
            self.queue.update_seed_coverage(
                seed, 
                result.coverage,
                result.lines_covered,
                result.total_lines
            )
            
            if result.coverage > self.stats.initial_coverage:
                self.stats.initial_coverage = result.coverage
            if result.coverage > self.stats.max_coverage:
                self.stats.max_coverage = result.coverage
            
            self.stats.update_coverage(result.coverage, is_original=True)
    
    def fuzz_iteration(self) -> bool:
        self.stats.current_iteration += 1
        
        seed = self.queue.get_next_seed()
        if not seed:
            print("Queue is empty")
            return False
        
        self._calculate_seed_coverage_if_needed(seed)
        
        q_stats = self.queue.get_stats()
        print(f"\n{'='*80}")
        print(f"ITERATION {self.stats.current_iteration} | GEN: {q_stats['generation']} | BATCH: {q_stats['batch_remaining']} left")
        print(f"Fuzzing: {seed.filename} (cov: {seed.coverage:.2f}%)")
        print(f"{'='*80}")
        
        print("[1/4] MUTATION PHASE")
        llm_start = time.time()
        try:
            with open(seed.path, 'r', encoding='utf-8') as f:
                original_code = f.read()
        except:
            self.queue.keep_seed_in_play(seed)
            return True

        mutated_code, mutation_prompt = self.mutator.mutate(original_code)
        self.stats.llm_time += time.time() - llm_start
        
        if not mutated_code:
            print("LLM mutation failed")
            self.queue.keep_seed_in_play(seed)
            return True
        
        strategy_display = mutation_prompt.split('\n')[0][:80] if mutation_prompt else "Unknown Strategy"
        print(f"Strategy: {strategy_display}")
        
        self.stats.total_mutations += 1
        
        print("[2/4] SYNTAX CHECK")
        exec_start = time.time()
        syntax_valid, syntax_error = self.executor.check_syntax(mutated_code)
        
        if not syntax_valid:
            self.stats.syntax_errors += 1
            print(f"Syntax error: {syntax_error[:80]}")
            self.stats.execution_time += time.time() - exec_start
            self.queue.keep_seed_in_play(seed)
            return True
        
        print("Syntax valid")
        
        print("[3/4] SANITIZER CHECK (ASan/UBSan)")
        sanitizer_result = self.executor.execute_with_sanitizer(mutated_code)
        
        if sanitizer_result.bug_found:
            self.stats.execution_time += time.time() - exec_start
            print(f"\n{'─'*70}")
            print(f"BUG FOUND Type: {sanitizer_result.bug_type}")
            print(f"Parent: {seed.filename}")
            
            bug_seed = self.queue.add_mutated_seed(
                code=mutated_code,
                parent_seed=seed,
                mutation_prompt=mutation_prompt,
                coverage=0.0,
                lines_covered=0,
                total_lines=0,
                found_bug=True,
                bug_type=sanitizer_result.bug_type
            )
            
            if bug_seed:
                self.stats.add_bug(sanitizer_result.bug_type, bug_seed.filename)
                
                dummy_cov = type('obj', (object,), {'coverage': 0.0})
                self._save_bug_report(seed, mutated_code, mutation_prompt, 
                                    sanitizer_result, dummy_cov)
            
            print("Promoting parent to High Priority")
            self.queue.promote_seed_to_front(seed)
            print(f"{'─'*70}\n")
            return True

        if sanitizer_result.runtime_error:
             print(f"Runtime error (Sanitized): {sanitizer_result.error_message[:80]}")
             self.stats.runtime_errors += 1
             self.stats.execution_time += time.time() - exec_start
             self.queue.keep_seed_in_play(seed)
             return True

        print("Sanitizer clean")

        print("[4/4] COVERAGE ANALYSIS")
        coverage_result = self.executor.execute_with_coverage(mutated_code)
        self.stats.execution_time += time.time() - exec_start
        
        if not coverage_result.success:
            print(f"Runtime error (Coverage): {coverage_result.error_message[:80]}")
            self.stats.runtime_errors += 1
            self.queue.keep_seed_in_play(seed)
            return True
        
        print(f"Coverage: {coverage_result.coverage:.2f}%")
        
        print(f"\n{'─'*70}")
        
        coverage_improved = coverage_result.coverage > seed.coverage
        
        if coverage_improved:
            self.stats.coverage_improvements += 1
            self.stats.update_coverage(coverage_result.coverage, is_original=False)
            print(f"Coverage improved: {seed.coverage:.2f}% -> {coverage_result.coverage:.2f}%")
            
            self.queue.add_mutated_seed(
                code=mutated_code,
                parent_seed=seed,
                mutation_prompt=mutation_prompt,
                coverage=coverage_result.coverage,
                lines_covered=coverage_result.lines_covered,
                total_lines=coverage_result.total_lines,
                found_bug=False
            )
            self.queue.keep_seed_in_play(seed)
            
        else:
            print("No improvement")
            self.queue.keep_seed_in_play(seed)
        
        print(f"{'─'*70}\n")
        return True
    
    def _save_bug_report(self, seed, mutated_code, mutation_prompt, 
                        sanitizer_result, coverage_result):
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        report_file = Path("bug_reports") / f"bug_{timestamp}.json"
        report_file.parent.mkdir(exist_ok=True)
        
        report = {
            'timestamp': datetime.now().isoformat(),
            'bug_type': sanitizer_result.bug_type,
            'parent_seed': seed.filename,
            'mutation_prompt': mutation_prompt,
            'coverage': getattr(coverage_result, 'coverage', 0.0),
            'sanitizer_report': sanitizer_result.sanitizer_report,
            'mutated_code': mutated_code
        }
        
        with open(report_file, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2)
    
    def _generate_detailed_bug_report(self):
        report_path = Path("detailed_bugs_report.txt")
        
        with open(report_path, 'w', encoding='utf-8') as f:
            f.write("=" * 70 + "\n")
            f.write(f"DETAILED BUG REPORT - {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write("=" * 70 + "\n\n")
            
            if not self.stats.detailed_bugs:
                f.write("No bugs found in this session\n")
            else:
                for i, (bug_type, files) in enumerate(self.stats.detailed_bugs.items(), 1):
                    source = "ASan/UBSan"
                    
                    f.write(f"[{i}] TYPE: {bug_type}\n")
                    f.write(f"    Detector: {source} found this error\n")
                    f.write(f"    Count: {len(files)} occurrences\n")
                    f.write(f"    Files that generated this bug:\n")
                    
                    for filename in sorted(files):
                        f.write(f"      - {filename}\n")
                    
                    f.write("\n" + "-" * 70 + "\n\n")
            
            f.write("=" * 70 + "\n")
            f.write("End of Report\n")
            
        print(f"\nDetailed report saved at: {report_path.absolute()}")

    def _generate_report(self):
        stats = self.stats.get_summary()
        queue_stats = self.queue.get_stats()
        
        report = {
            'fuzzing_campaign': {
                'start_time': self.stats.start_time.isoformat(),
                'end_time': datetime.now().isoformat(),
                'duration': stats['runtime']
            },
            'execution_stats': stats,
            'queue_stats': queue_stats
        }
        
        with open("fuzzing_report.json", 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=2)
        
        self._generate_detailed_bug_report()
        self._print_report_summary(report)

    def _print_report_summary(self, report):
        print("\n" + "="*60)
        print("FUZZING SUMMARY")
        print("="*60)
        print(f"Duration: {report['fuzzing_campaign']['duration']}")
        print(f"Mutations: {report['execution_stats']['total_mutations']}")
        print(f"Bugs Found: {report['execution_stats']['bugs_found']}")
        print("\nCheck detailed_bugs_report.txt for full file list")
        print("="*60)

    def _print_status(self):
        stats = self.stats.get_summary()
        queue_stats = self.queue.get_stats()
        print(f"\nSTATUS Gen: {queue_stats['generation']} | "
              f"Queue: {queue_stats['current_queue_size']} | "
              f"Bugs: {stats['bugs_found']} | "
              f"Cov: {self.stats.max_coverage:.2f}%")

    def run(self):
        print("\n" + "="*60)
        print("STARTING FUZZING CAMPAIGN (SANITIZER FIRST)")
        print("="*60)
        
        end_time = self.stats.start_time + self.duration
        last_status = time.time()
        
        try:
            while self.running and datetime.now() < end_time:
                if time.time() - last_status > 30:
                    self._print_status()
                    last_status = time.time()
                
                if not self.fuzz_iteration():
                    break
        except Exception as e:
            print(f"\nFatal error: {e}")
            import traceback
            traceback.print_exc()
        finally:
            self._generate_report()
            self.queue.save_state()
            print("\nFuzzing finished")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', '--time', type=int, default=60)
    parser.add_argument('-q', '--quiet', action='store_true')
    args = parser.parse_args()
    
    fuzzer = LuaFuzzer(duration_minutes=args.time, verbose=not args.quiet)
    fuzzer.run()

if __name__ == "__main__":
    main()