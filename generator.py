import ollama
import subprocess
import os
import re
from pathlib import Path
import time
import random
import hashlib

class LuaSeedGenerator:
    def __init__(self, output_dir="lua_seeds", target_count=10000, test_suite_dir=None):
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(exist_ok=True)
        self.target_count = target_count
        self.valid_count = 0
        self.attempt_count = 0
        self.lua_interpreter = "lua5.4"
        self.test_suite_context = ""
        self.test_suite_examples = []
        self.seen_hashes = set() 
        
        if test_suite_dir:
            self.load_test_suite(test_suite_dir)
        
    def load_test_suite(self, test_suite_dir):
        test_dir = Path(test_suite_dir)
        if not test_dir.exists():
            print(f"Test suite dir not found: {test_suite_dir}")
            return
        
        print("Loading Lua test suite")
        all_code = []
        
        lua_files = list(test_dir.glob("*.lua"))
        
        for lua_file in lua_files:
            try:
                with open(lua_file, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                    all_code.append(f"-- From {lua_file.name}\n{content}\n")
                    self.extract_small_snippets(content)
            except Exception as e:
                print(f"Error reading {lua_file}: {e}")
        
        full_context = "\n".join(all_code)
        self.test_suite_context = full_context[:8000]
        
        print(f"Test suite loaded: {len(lua_files)} files")
        print(f"Snippets extracted: {len(self.test_suite_examples)}")
        print(f"Context: {len(self.test_suite_context)} chars")
    
    def extract_small_snippets(self, content):
        lines = content.split('\n')
        current_snippet = []
        
        for line in lines:
            clean_line = re.sub(r'--.*$', '', line).strip()
            if not clean_line:
                if current_snippet:
                    snippet = '\n'.join(current_snippet)
                    if 3 <= len(current_snippet) <= 15:
                        self.test_suite_examples.append(snippet)
                    current_snippet = []
                continue
            
            current_snippet.append(line)
            
            if len(current_snippet) >= 15:
                snippet = '\n'.join(current_snippet)
                self.test_suite_examples.append(snippet)
                current_snippet = []
    
    def check_lua_available(self):
        try:
            result = subprocess.run(
                [self.lua_interpreter, "-v"],
                capture_output=True,
                text=True,
                timeout=2
            )
            return result.returncode == 0
        except (subprocess.TimeoutExpired, FileNotFoundError):
            return False
    
    def clean_llm_output(self, code):
        code = re.sub(r'```lua\n', '', code)
        code = re.sub(r'```\n?', '', code)
        code = re.sub(r'```', '', code)
        
        lines = []
        for line in code.split('\n'):
            line = re.sub(r'--.*$', '', line)
            line = line.strip()
            if line:
                lines.append(line)
        
        return '\n'.join(lines)
    
    def validate_lua_script(self, code):
        try:
            temp_file = self.output_dir / "temp_test.lua"
            with open(temp_file, 'w', encoding='utf-8') as f:
                f.write(code)
            
            result = subprocess.run(
                [self.lua_interpreter, str(temp_file)],
                capture_output=True,
                text=True,
                timeout=3
            )
            
            temp_file.unlink()
            return result.returncode == 0
            
        except subprocess.TimeoutExpired:
            if temp_file.exists():
                temp_file.unlink()
            return False
        except Exception as e:
            if temp_file.exists():
                temp_file.unlink()
            return False
    
    def generate_lua_code(self):
        use_full_context = random.random() < 0.3
        
        if use_full_context and self.test_suite_context:
            prompt = f"""Based on these Lua test examples:

{self.test_suite_context}

Generate a NEW valid Lua code snippet (maximum 15 lines, no comments, no markdown).
Use similar patterns and idioms from the examples above.
Output only the code, nothing else."""

        elif self.test_suite_examples:
            num_examples = min(3, len(self.test_suite_examples))
            examples = random.sample(self.test_suite_examples, num_examples)
            examples_text = "\n\n".join(examples)
            
            prompt = f"""Here are some Lua code examples:

{examples_text}

Generate a NEW valid Lua code snippet inspired by these examples.
Maximum 15 lines, no comments, no markdown.
Output only the code, nothing else."""

        else:
            base_prompts = [
            "Generate a Lua script that heavily abuses metatables. Use '__index', '__newindex', '__add', and '__call'. Create cyclic metatable references. Max 15 lines, dense logic, no comments.",
            "Write a Lua script using nested coroutines passing values back and forth via 'yield'. Create deep recursion within coroutines to stress the stack. Max 15 lines, no comments.",
            "Create a Lua script that churns memory rapidly. Create temporary tables with weak keys/values ('__mode'), break references, and force 'collectgarbage()' in loops. Max 15 lines, no comments.",
            "Generate Lua code that manipulates massive strings using 'string.rep', 'string.gsub', and concatenation in loops. Use strange patterns for matching. Max 15 lines, no comments.",
            "Write a Lua script that mixes types unexpectedly. Use tables as keys, perform arithmetic on strings, and switch variable types rapidly in loops. Max 15 lines, no comments.",
            "Create deeply nested functions that modify shared 'local' upvalues. Return closures that modify state after the parent function returns. Max 15 lines, no comments.",
            "Generate Lua code using 'goto' labels to create spaghetti code loops and complex control flow that creates uninitialized variables. Max 15 lines, no comments.",
            "Create a Lua script that inserts thousands of keys into a table with intentional collisions (if possible) or mixes integer and string keys to force array/hash part transitions. Max 15 lines, no comments.",
            "Write a Lua script using variadic functions ('...') that pass arguments recursively to other variadic functions to test argument stack limits. Max 15 lines, no comments.",
            "Generate Lua code testing integer overflows, division by zero, min/max integers, and bitwise operations on edge values. Max 15 lines, no comments."
        ]
            prompt = random.choice(base_prompts)
        
        try:
            response = ollama.generate(
                model='starcoder2:instruct',
                prompt=prompt,
                options={
                    'temperature': 0.8,
                    'top_p': 0.9,
                    'num_predict': 400
                }
            )
            return response['response']
        except Exception as e:
            print(f"Error generating code: {e}")
            return None
    
    def save_valid_script(self, code):
        filename = self.output_dir / f"seed_{self.valid_count:04d}.lua"
        with open(filename, 'w', encoding='utf-8') as f:
            f.write(code)
        self.valid_count += 1
    
    def generate_seeds(self):
        if not self.check_lua_available():
            print(f"Interpreter not found: {self.lua_interpreter}")
            print("Install Lua 5.4: sudo apt-get install lua5.4")
            return
        
        print(f"Generating {self.target_count} valid Lua seeds")
        print(f"Output dir: {self.output_dir.absolute()}")
        print("-" * 60)
        
        start_time = time.time()
        
        while self.valid_count < self.target_count:
            self.attempt_count += 1
            
            raw_code = self.generate_lua_code()
            if not raw_code:
                continue
            
            clean_code = self.clean_llm_output(raw_code)
            
            line_count = len([l for l in clean_code.split('\n') if l.strip()])
            if line_count == 0 or line_count > 15:
                continue

            code_hash = hashlib.md5(clean_code.encode()).hexdigest()
            if code_hash in self.seen_hashes:
                print(f"Duplicate ignored (Attempt {self.attempt_count})")
                continue
            
            if self.validate_lua_script(clean_code):
                self.save_valid_script(clean_code)
                self.seen_hashes.add(code_hash)
                
                print(f"Seed {self.valid_count}/{self.target_count} | Attempts: {self.attempt_count} | Rate: {(self.valid_count/self.attempt_count)*100:.1f}%")
            else:
                if self.attempt_count % 50 == 0:
                    print(f"[{self.attempt_count} attempts, {self.valid_count} valid]")
        
        elapsed = time.time() - start_time
        print("\n" + "=" * 60)
        print("Done")
        print(f"Generated seeds: {self.valid_count}")
        print(f"Total attempts: {self.attempt_count}")
        print(f"Success rate: {(self.valid_count/self.attempt_count)*100:.2f}%")
        print(f"Elapsed time: {elapsed:.1f}s")
        print(f"Dir: {self.output_dir.absolute()}")

if __name__ == "__main__":
    generator = LuaSeedGenerator(
        output_dir="lua_seeds",
        target_count=10000,
        test_suite_dir="lua-5.4.8-test"
    )
    generator.generate_seeds()