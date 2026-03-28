function generate_code(str)
local count = #str
local pattern = string.rep(".", count)
local replaced = string.gsub(str, pattern, "")
local result = ""
for i = 1, count do
result = result .. replaced
end
return result
end