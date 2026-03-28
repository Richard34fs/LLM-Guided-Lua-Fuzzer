function manipulate_strings(n)
local result = {}
local pattern = string.rep("a", n)
pattern = string.gsub(pattern, pattern, "b")
for i = 1, n do
result[i] = pattern
end
return table.concat(result)
end