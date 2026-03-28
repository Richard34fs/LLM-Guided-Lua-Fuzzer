function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep("x", #str)
local replaced_str = string.gsub(str, pattern, "")
code = code .. '"' .. replaced_str .. '" .. '
end
return code .. "''"
end