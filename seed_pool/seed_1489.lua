local s = string.rep("a", 2000)
for i = 1, 5 do
local pattern = string.rep(".", i)
s = string.gsub(s, pattern, "")
end
print(#s)