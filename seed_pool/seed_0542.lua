local function generate_massive_strings(n)
local result = {}
for i = 1, n do
local pattern = string.rep("a", i)
local replaced = string.gsub("b" .. pattern .. "c", pattern, "")
result[i] = replaced .. replaced
end
return result
end