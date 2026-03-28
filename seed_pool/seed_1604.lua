function generate_code(n)
local s = string.rep("a", n)
local t = {}
for i = 1, n do
t[i] = string.gsub(s, "a", "") .. "a"
end
return table.concat(t, "\n")
end