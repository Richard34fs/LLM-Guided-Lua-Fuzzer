local function generate_code(str)
local pattern = string.rep("%s", #str)
local replaced = string.gsub(str, pattern, "")
local result = ""
for i = 1, #replaced do
result = result .. replaced:sub(i, i)
end
return result
end