local function generate_massive_strings(num)
local result = {}
for i = 1, num do
local pattern = string.rep("a", i)
local replacement = string.rep("b", i * 2)
local modified_string = string.gsub("aaaaaabbbbb", pattern, replacement)
table.insert(result, modified_string)
end
return table.concat(result, "\n")
end