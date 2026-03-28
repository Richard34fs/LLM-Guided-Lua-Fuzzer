import os
import subprocess
import glob
from pathlib import Path
from typing import Optional, Dict
from dataclasses import dataclass

@dataclass
class CoverageReport:
    total_coverage: float
    total_lines: int
    total_hits: int

class CoverageManager:
    def __init__(self, source_dir: str):
        self.source_dir = Path(source_dir).absolute()
        
        if not self.source_dir.exists():
            print(f"GCOV source dir not found: {self.source_dir}")
            
        try:
            subprocess.run(['gcov', '--version'], capture_output=True, check=True)
            self.gcov_available = True
        except (subprocess.CalledProcessError, FileNotFoundError):
            print("GCOV binary not found")
            self.gcov_available = False

    def reset_coverage(self):
        if not self.source_dir.exists():
            return

        for gcda in self.source_dir.glob("*.gcda"):
            try:
                gcda.unlink()
            except OSError:
                pass

    def collect_coverage(self) -> Optional[CoverageReport]:
        if not self.gcov_available or not self.source_dir.exists():
            return CoverageReport(0.0, 0, 0)

        total_lines = 0
        total_hits = 0

        cmd = ['gcov', '-n', '*.c']
        
        try:
            result = subprocess.run(
                'gcov -n *.c',
                shell=True,
                cwd=str(self.source_dir),
                capture_output=True,
                text=True
            )
            
            for line in result.stdout.split('\n'):
                if "Lines executed:" in line:
                    parts = line.split(':')
                    if len(parts) >= 2:
                        data = parts[1].strip().split()
                        if len(data) >= 3:
                            pct_str = data[0].replace('%', '')
                            count_str = data[2]
                            
                            try:
                                file_total = int(count_str)
                                file_pct = float(pct_str)
                                file_hits = int(file_total * (file_pct / 100.0))
                                
                                total_lines += file_total
                                total_hits += file_hits
                            except ValueError:
                                continue

            if total_lines == 0:
                return CoverageReport(0.0, 0, 0)
            
            final_pct = (total_hits / total_lines) * 100.0
            return CoverageReport(final_pct, total_lines, total_hits)

        except Exception as e:
            print(f"GCOV error: {e}")
            return CoverageReport(0.0, 0, 0)

def main():
    print("Testing GCOV Manager")
    src_dir = "./lua-5.4.8-coverage/src"
    mgr = CoverageManager(src_dir)
    
    print("Resetting coverage")
    mgr.reset_coverage()
    
    print("Collecting")
    rep = mgr.collect_coverage()
    print(f"Coverage: {rep.total_coverage:.2f}% ({rep.total_hits}/{rep.total_lines})")

if __name__ == "__main__":
    main()