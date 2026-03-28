local function generate_massive_strings(n)
local result = {}
for i = 1, n do
local s = string.rep("a", i) .. string.rep("b", i * i)
s = string.gsub(s, "aaa", "")
s = string.gsub(s, "bbb", "")
table.insert(result, s)
end
return result
end