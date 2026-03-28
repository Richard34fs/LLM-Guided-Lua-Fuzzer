function generate_code(massive_strings)
local code = ""
for _, str in ipairs(massive_strings) do
local pattern = string.rep("%", #str)
local replaced = string.gsub(str, pattern, "")
code = code .. replaced
end
return code
end