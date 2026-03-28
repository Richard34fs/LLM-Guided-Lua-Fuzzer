local function generate_massive_strings(n)
local result = {}
for i = 1, n do
local pattern = string.rep("a", i) .. "b" .. string.rep("c", i)
local replaced = string.gsub("aabbcc", pattern, "")
result[i] = replaced .. string.rep("d", i)
end
return table.concat(result, "")
end