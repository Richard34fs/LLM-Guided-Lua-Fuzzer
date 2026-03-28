local s = string.rep("x", 10^6)
local t = {}
for i = 1, 10 do
local u = string.gsub(s, "x", "")
t[i] = u .. u
end
local result = table.concat(t, "\n")