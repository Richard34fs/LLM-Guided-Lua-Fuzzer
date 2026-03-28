local function manipulate_massive_strings()
local result = {}
for i = 1, 1000 do
local pattern = string.rep("*", i)
local replaced = string.gsub("xxxxxxxxxxxxxxx", pattern, "")
result[i] = replaced .. replaced
end
return table.concat(result, "\n")
end