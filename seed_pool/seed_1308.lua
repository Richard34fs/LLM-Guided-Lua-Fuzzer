local function generate_massive_strings(num)
local result = {}
for i = 1, num do
local pattern = string.rep("a", i)
local replacement = string.rep("b", i * 2)
local modified = string.gsub("aaaaaaaaaa", pattern, replacement)
table.insert(result, modified)
end
return table.concat(result, "")
end