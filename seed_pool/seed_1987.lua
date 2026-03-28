function generate_code(massive_strings)
local generated_code = ""
for i, massive_string in ipairs(massive_strings) do
local pattern = string.rep("x", i)
local replaced_string = string.gsub(massive_string, pattern, "")
generated_code = generated_code .. "print('" .. replaced_string .. "')"
end
return generated_code
end