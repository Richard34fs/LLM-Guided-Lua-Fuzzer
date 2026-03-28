function manipulate_strings(n)
local result = {}
for i = 1, n do
local pattern = string.rep("x", i)
local replacement = string.rep("o", i)
local modified = string.gsub("xxxxxxxxxx", pattern, replacement)
table.insert(result, modified)
end
return table.concat(result, "\n")
end