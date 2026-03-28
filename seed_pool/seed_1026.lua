local function manipulate_massive_strings(n)
local result = {}
for i = 1, n do
local pattern = string.rep("%", i)
local replacement = string.rep(" ", i * 2)
local transformed = string.gsub("hello world", pattern, replacement)
table.insert(result, transformed)
end
return table.concat(result, "\n")
end