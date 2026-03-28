local function generate_code(str)
local pattern = string.rep(".", #str)
local replaced_str = string.gsub(str, pattern, "")
local result = ""
for i = 1, #replaced_str do
result = result .. replaced_str:sub(i, i)
end
return result
end