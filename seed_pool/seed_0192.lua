local function generate_massive_strings(num)
local result = {}
for i = 1, num do
local pattern = string.rep("*", i)
local replaced = string.gsub("abcdefghijklmnopqrstuvwxyz", pattern, "")
result[i] = replaced
end
return table.concat(result, "")
end