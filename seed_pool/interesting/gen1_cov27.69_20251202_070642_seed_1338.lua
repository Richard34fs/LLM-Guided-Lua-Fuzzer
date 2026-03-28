local t = {}
local a, b, c = 1, 2, 3
t["hello"] = 10
t[2 + 3] = "world"
for i = 1, 10 do
t[i] = i * 2
end
print(t["hello"])
print(t[5])
print(t[10])