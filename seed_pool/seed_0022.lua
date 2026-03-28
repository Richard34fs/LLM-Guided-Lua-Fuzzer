local function manipulate_massive_strings(n)
local result = {}
for i = 1, n do
local s = string.rep("x", i) .. "y"
s = string.gsub(s, "x*y", "")
table.insert(result, s)
end
return table.concat(result, "\n")
end