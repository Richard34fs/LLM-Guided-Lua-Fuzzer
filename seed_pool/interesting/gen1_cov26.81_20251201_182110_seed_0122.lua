function generate_code(massive_strings)
  local generated_code = ""
  for i, massive_string in ipairs(massive_strings) do
    local pattern = string.rep("a", i)
    local replaced_string = string.gsub(massive_string, pattern, "")
    generated_code = generated_code .. replaced_string
  end
  return generated_code
end
function load_generated_code(generated_code)
  local chunk = load(generated_code)
  if chunk then
    local result = chunk()
    return result
  else
    error("Failed to load generated code")
  end
end