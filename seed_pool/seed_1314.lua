local function manipulate_massive_strings(n)
local result = {}
for i = 1, n do
result[i] = string.rep("a", i) .. string.rep("b", i)
end
for i = n, 1, -1 do
result[i] = string.gsub(result[i], "ab", "ba")
end
return table.concat(result, "")
end