local t = {}
t["hello"] = "world"
print(t["hello"])
local n = 10
n = n + "20"
print(n)
for i = 1, 5 do
t[i] = i * 2
end
for k, v in pairs(t) do
print(k, v)
end