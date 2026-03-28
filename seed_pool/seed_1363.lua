function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local num_iterations = #str / 10
local pattern = string.rep("x", num_iterations)
local modified_str = string.gsub(str, pattern, "")
code = code .. modified_str
end
return code
end