import random
import sys
import os

try:
    import ollama
except ImportError:
    print("Ollama Python library not found")
    print("Install with: pip install ollama")
    sys.exit(1)

class LLMMutator:
    def __init__(self, model="starcoder2:instruct", prompts_file="prompt.txt"):
        self.model = model
        self.prompts = self._load_prompts(prompts_file)
        self._ensure_ollama_running()
        
    def _load_prompts(self, prompts_file):
        if not os.path.exists(prompts_file):
            print(f"Prompts file not found: {prompts_file}")
            print(f"Create {prompts_file} with mutation strategies")
            sys.exit(1)
        
        prompts = []
        with open(prompts_file, 'r', encoding='utf-8') as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith('#'):
                    continue
                
                if '. ' in line and line[0].isdigit():
                    parts = line.split('. ', 1)
                    if len(parts) == 2:
                        prompt_text = parts[1].strip()
                        prompts.append(prompt_text)
                else:
                    prompts.append(line)
        
        if not prompts:
            print(f"No prompts found in {prompts_file}")
            sys.exit(1)
        
        print(f"Loaded {len(prompts)} mutation prompts from {prompts_file}")
        return prompts
    
    def _ensure_ollama_running(self):
        try:
            models_response = ollama.list()
            
            if isinstance(models_response, dict):
                models_list = models_response.get('models', [])
            else:
                models_list = models_response
            
            model_names = []
            for m in models_list:
                if isinstance(m, dict):
                    name = m.get('name') or m.get('model') or m.get('id', '')
                    model_names.append(name)
                else:
                    model_names.append(str(m))
            
            model_base = self.model.split(':')[0]
            model_found = any(model_base in str(name) for name in model_names)
            
            if not model_found:
                print(f"Model {self.model} not found. Pulling")
                try:
                    ollama.pull(self.model)
                    print(f"Model {self.model} ready")
                except Exception as e:
                    print(f"Failed to pull model: {e}")
                    print(f"Try manually: ollama pull {self.model}")
                    sys.exit(1)
            else:
                print(f"Model {self.model} available")
                
        except ollama.ResponseError as e:
            print(f"Ollama API error: {e}")
            print("Make sure Ollama is running: ollama serve")
            sys.exit(1)
        except ConnectionError as e:
            print(f"Cannot connect to Ollama: {e}")
            print("Make sure Ollama is running: ollama serve")
            sys.exit(1)
        except Exception as e:
            print(f"Error checking Ollama: {e}")
            print(f"Type: {type(e).__name__}")
            print("Trying to continue anyway")
    
    def select_random_prompt(self):
        return random.choice(self.prompts)
    
    def mutate(self, lua_code, max_attempts=3):
        prompt_strategy = self.select_random_prompt()
        
        if ':' in prompt_strategy:
            strategy_parts = prompt_strategy.split(':', 1)
            strategy_name = strategy_parts[0].strip()
            strategy_desc = strategy_parts[1].strip()
        else:
            strategy_name = "MUTATE"
            strategy_desc = prompt_strategy
        
        system_prompt = """You are a Lua code mutation expert for fuzzing and bug detection.
Your goal is to modify Lua code following a specific mutation strategy to find potential bugs.

CRITICAL RULES:
1. Return ONLY valid, syntactically correct Lua code
2. Do NOT add explanations, comments about changes, or markdown formatting
3. Apply EXACTLY the mutation strategy provided
4. Keep the code executable - it must run without syntax errors
5. Make semantic changes that could reveal bugs, not random modifications
6. The mutated code should be complete and self-contained"""

        user_prompt = f"""Apply this mutation strategy to the Lua code below:

STRATEGY: {strategy_name}
{strategy_desc}

Original Lua code:
{lua_code}

Return ONLY the mutated Lua code following the strategy above. No explanations, no markdown, just the code."""

        for attempt in range(max_attempts):
            try:
                if attempt > 0:
                    print(f"LLM retry attempt {attempt + 1}/{max_attempts}")
                
                import time
                start_time = time.time()
                
                response = ollama.chat(
                    model=self.model,
                    messages=[
                        {"role": "system", "content": system_prompt},
                        {"role": "user", "content": user_prompt}
                    ],
                    options={
                        "temperature": 1.0,
                        "num_predict": 2048,
                    }
                )
                
                elapsed = time.time() - start_time
                print(f"LLM response time: {elapsed:.2f}s")
                
                mutated_code = response['message']['content'].strip()
                mutated_code = self._clean_llm_output(mutated_code)
                
                if mutated_code and len(mutated_code) > 10:
                    return mutated_code, prompt_strategy
                else:
                    print(f"LLM returned empty or too short response (attempt {attempt + 1})")
                    continue
                
            except ollama.ResponseError as e:
                print(f"Ollama API error (attempt {attempt + 1}): {e}")
                continue
            except Exception as e:
                print(f"LLM error (attempt {attempt + 1}): {e}")
                continue
        
        return None, None
    
    def _clean_llm_output(self, code):
        if '```' in code:
            parts = code.split('```')
            if len(parts) >= 3:
                code_block = parts[1]
                if code_block.startswith('lua') or code_block.startswith('Lua'):
                    code_block = code_block[3:].lstrip()
                code = code_block
        
        lines = code.split('\n')
        cleaned_lines = []
        code_started = False
        
        for line in lines:
            stripped = line.strip()
            
            if not code_started:
                if (stripped.startswith('--') or 
                    stripped.startswith('function ') or
                    stripped.startswith('local ') or
                    stripped.startswith('if ') or
                    stripped.startswith('for ') or
                    stripped.startswith('while ') or
                    stripped.startswith('return ') or
                    stripped.startswith('end') or
                    '=' in stripped or
                    stripped.startswith('print')):
                    code_started = True
                    cleaned_lines.append(line)
                elif any(phrase in stripped.lower() for phrase in [
                    'here is', "here's", 'the mutated', 'modified code',
                    'i have', 'i added', 'i modified', 'i changed',
                    'this code', 'the code', 'explanation'
                ]):
                    continue
                else:
                    if stripped:
                        cleaned_lines.append(line)
            else:
                cleaned_lines.append(line)
        
        if cleaned_lines:
            code = '\n'.join(cleaned_lines)
        
        code_lines = code.split('\n')
        last_code_line = len(code_lines) - 1
        
        for i in range(len(code_lines) - 1, -1, -1):
            stripped = code_lines[i].strip()
            if not stripped:
                continue
            if any(phrase in stripped.lower() for phrase in [
                'this mutation', 'i have added', 'the strategy',
                'note:', 'explanation:', 'output:'
            ]) and '--' not in stripped:
                last_code_line = i - 1
            else:
                break
        
        if last_code_line < len(code_lines) - 1:
            code = '\n'.join(code_lines[:last_code_line + 1])
        
        return code.strip()
    
    def batch_mutate(self, lua_code, count=1):
        mutations = []
        for i in range(count):
            mutated, prompt = self.mutate(lua_code)
            if mutated:
                mutations.append({
                    'code': mutated,
                    'prompt': prompt,
                    'index': i
                })
        return mutations

def main():
    if len(sys.argv) < 2:
        print("Usage: python llm.py <lua_file>")
        sys.exit(1)
    
    lua_file = sys.argv[1]
    with open(lua_file, 'r', encoding='utf-8') as f:
        original_code = f.read()
    
    print("Loading LLM mutator")
    mutator = LLMMutator()
    
    print(f"Mutating {lua_file}")
    mutated, prompt = mutator.mutate(original_code)
    
    if mutated:
        print("Mutation successful")
        print(f"Strategy used: {prompt[:80]}")
        print("--- Mutated Code ---")
        print(mutated)
        
        output_file = lua_file.replace('.lua', '_mutated.lua')
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(mutated)
        print(f"Saved to: {output_file}")
    else:
        print("Mutation failed")
        sys.exit(1)

if __name__ == "__main__":
    main()