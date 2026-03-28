local function massive_string(n)
local s = ""
for i = 1, n do
s = s .. string.rep("A", 10000) .. string.rep("B", 20000) .. string.rep("C", 30000)
end
s = string.gsub(s, "XXX", "")
return s
end