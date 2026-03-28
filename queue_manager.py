import os
import json
import hashlib
from pathlib import Path
from typing import List, Dict, Optional
from dataclasses import dataclass, asdict
from datetime import datetime

@dataclass
class SeedInfo:
    path: str
    filename: str
    coverage: float = 0.0
    lines_covered: int = 0
    total_lines: int = 0
    found_bug: bool = False
    bug_type: Optional[str] = None
    generation: int = 0
    parent: Optional[str] = None
    mutation_prompt: Optional[str] = None
    created_at: str = ""
    hash: str = ""
    
    def __post_init__(self):
        if not self.created_at:
            self.created_at = datetime.now().isoformat()
        if not self.hash:
            self.hash = self._calculate_hash()
    
    def _calculate_hash(self):
        try:
            with open(self.path, 'rb') as f:
                return hashlib.sha256(f.read()).hexdigest()[:16]
        except:
            return ""

class QueueManager:
    def __init__(self, seed_pool_dir="seed_pool", queue_state_file="queue_state.json"):
        self.seed_pool_dir = Path(seed_pool_dir)
        self.queue_state_file = queue_state_file
        
        self.current_queue: List[SeedInfo] = []
        self.next_queue: List[SeedInfo] = []
        
        self.current_batch_limit = 0
        
        self.seen_hashes = set()
        self.generation_count = 1
        
        self.stats = {
            'total_seeds': 0,
            'total_bugs_found': 0,
            'unique_bugs': set(),
            'mutations_generated': 0,
            'queue_updates': 0
        }
        
        self._ensure_directories()
        self._load_initial_seeds()
    
    def _ensure_directories(self):
        self.seed_pool_dir.mkdir(exist_ok=True)
        (self.seed_pool_dir / "bugs").mkdir(exist_ok=True)
        (self.seed_pool_dir / "interesting").mkdir(exist_ok=True)
        print(f"Seed pool dir: {self.seed_pool_dir}")
    
    def _load_initial_seeds(self):
        lua_files = sorted(list(self.seed_pool_dir.glob("*.lua")))
        
        if not lua_files:
            print(f"No seeds found in {self.seed_pool_dir}")
            print("Creating example seed")
            self._create_example_seed()
            lua_files = sorted(list(self.seed_pool_dir.glob("*.lua")))
        
        print(f"Loading {len(lua_files)} initial seeds")
        
        for lua_file in lua_files:
            seed_info = SeedInfo(
                path=str(lua_file),
                filename=lua_file.name,
                generation=0
            )
            
            if seed_info.hash not in self.seen_hashes:
                self.current_queue.append(seed_info)
                self.seen_hashes.add(seed_info.hash)
                self.stats['total_seeds'] += 1
        
        self.current_batch_limit = len(self.current_queue)
        print(f"Loaded {len(self.current_queue)} seeds in Generation 1")
    
    def _create_example_seed(self):
        example_code = """-- Example Lua seed
function factorial(n)
    if n <= 1 then return 1 end
    return n * factorial(n - 1)
end
print(factorial(5))
"""
        seed_path = self.seed_pool_dir / "seed_0000_example.lua"
        with open(seed_path, 'w', encoding='utf-8') as f:
            f.write(example_code)
    
    def get_next_seed(self) -> Optional[SeedInfo]:
        if not self.current_queue:
            if not self.next_queue:
                return None
            
            print(f"\n{'='*60}")
            print(f"GENERATION CHANGE: {self.generation_count} -> {self.generation_count + 1}")
            print(f"Next queue ({len(self.next_queue)} items) becomes current")
            print(f"{'='*60}\n")
            
            self.current_queue = self._sort_next_generation(self.next_queue)
            self.next_queue = []
            
            self.current_batch_limit = len(self.current_queue)
            self.generation_count += 1
            
        self.current_batch_limit -= 1
        
        return self.current_queue.pop(0)

    def _sort_next_generation(self, queue_list: List[SeedInfo]) -> List[SeedInfo]:
        bugs = [s for s in queue_list if s.found_bug]
        others = [s for s in queue_list if not s.found_bug]
        
        bugs.sort(key=lambda s: s.coverage, reverse=True)
        others.sort(key=lambda s: s.coverage, reverse=True)
        
        return bugs + others

    def update_seed_coverage(self, seed_info: SeedInfo, coverage: float, 
                            lines_covered: int, total_lines: int):
        seed_info.coverage = coverage
        seed_info.lines_covered = lines_covered
        seed_info.total_lines = total_lines
        self.stats['queue_updates'] += 1

    def add_mutated_seed(self, code: str, parent_seed: SeedInfo, 
                        mutation_prompt: str, coverage: float = 0.0,
                        lines_covered: int = 0, total_lines: int = 0,
                        found_bug: bool = False, bug_type: Optional[str] = None):
        generation = parent_seed.generation + 1
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        if found_bug:
            filename = f"bug_{timestamp}_{parent_seed.filename}"
            save_dir = self.seed_pool_dir / "bugs"
        elif coverage > parent_seed.coverage:
            filename = f"gen{generation}_cov{coverage:.2f}_{timestamp}_{parent_seed.filename}"
            save_dir = self.seed_pool_dir / "interesting"
        else:
            return None
        
        filepath = save_dir / filename
        
        seed_hash = hashlib.sha256(code.encode()).hexdigest()[:16]
        if seed_hash in self.seen_hashes:
            return None
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(code)
        
        new_seed = SeedInfo(
            path=str(filepath),
            filename=filename,
            coverage=coverage,
            lines_covered=lines_covered,
            total_lines=total_lines,
            found_bug=found_bug,
            bug_type=bug_type,
            generation=generation,
            parent=parent_seed.filename,
            mutation_prompt=mutation_prompt,
            hash=seed_hash
        )
        
        self.seen_hashes.add(seed_hash)
        self.stats['total_seeds'] += 1
        self.stats['mutations_generated'] += 1
        
        if found_bug:
            if self.current_batch_limit >= 0:
                self.current_queue.append(new_seed)
                print(f"Bug '{filename}' -> Current queue end (High priority)")
            else:
                self.next_queue.append(new_seed)
                print(f"Bug '{filename}' -> Next queue (End of batch)")
            
            self.stats['total_bugs_found'] += 1
            if bug_type:
                self.stats['unique_bugs'].add(bug_type)
        else:
            self.next_queue.append(new_seed)
            print(f"Seed '{filename}' -> Next queue")
            
        return new_seed

    def promote_seed_to_front(self, seed):
        seed.found_bug = True
        if seed not in self.next_queue:
            self.next_queue.append(seed)
            print(f"Parent '{seed.filename}' -> Next queue (High priority)")

    def keep_seed_in_play(self, seed):
        if seed not in self.next_queue:
            self.next_queue.append(seed)

    def get_stats(self) -> Dict:
        total_seeds = self.current_queue + self.next_queue
        avg_cov = sum(s.coverage for s in total_seeds) / len(total_seeds) if total_seeds else 0
        max_cov = max((s.coverage for s in total_seeds), default=0)
            
        return {
            'generation': self.generation_count,
            'current_queue_size': len(self.current_queue),
            'next_queue_size': len(self.next_queue),
            'batch_remaining': max(0, self.current_batch_limit),
            'total_processed': self.stats['total_seeds'],
            'bugs_found': self.stats['total_bugs_found'],
            'avg_coverage': avg_cov,
            'max_coverage': max_cov
        }
    
    def save_state(self):
        state = {
            'timestamp': datetime.now().isoformat(),
            'generation': self.generation_count,
            'stats': {**self.stats, 'unique_bugs': list(self.stats['unique_bugs'])},
            'current_queue': [asdict(s) for s in self.current_queue],
            'next_queue': [asdict(s) for s in self.next_queue]
        }
        with open(self.queue_state_file, 'w', encoding='utf-8') as f:
            json.dump(state, f, indent=2)

    def load_state(self):
        if not os.path.exists(self.queue_state_file):
            return False
        try:
            with open(self.queue_state_file, 'r') as f:
                state = json.load(f)
            self.stats = state['stats']
            self.stats['unique_bugs'] = set(self.stats['unique_bugs'])
            self.generation_count = state.get('generation', 1)
            self.current_queue = [SeedInfo(**s) for s in state['current_queue']]
            self.next_queue = [SeedInfo(**s) for s in state['next_queue']]
            self.current_batch_limit = len(self.current_queue)
            self.seen_hashes = {s.hash for s in self.current_queue + self.next_queue}
            return True
        except:
            return False

    def print_queue_status(self):
        stats = self.get_stats()
        print("\n" + "="*60)
        print(f"QUEUE STATUS - GENERATION {stats['generation']}")
        print("="*60)
        print(f"Current Queue:      {stats['current_queue_size']} (Remaining: {stats['batch_remaining']})")
        print(f"Next Queue:         {stats['next_queue_size']}")
        print(f"Bugs Found:         {stats['bugs_found']}")
        print("="*60)