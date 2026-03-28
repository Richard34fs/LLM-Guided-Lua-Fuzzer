local function generate_massive_strings(num_strings)
local result = {}
for i = 1, num_strings do
local pattern = string.rep("x", i)
local replaced = string.gsub("xxxxxxxxxx", pattern, "")
result[i] = replaced .. "|"
end
return table.concat(result)
end