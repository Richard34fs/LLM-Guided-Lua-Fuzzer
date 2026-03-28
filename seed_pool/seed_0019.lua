local t = {}
t["foo"] = "bar"
print(t["foo"])
local a = 42
a = a + "13"
print(a)
for i = 1, 10 do
t[i] = i * 2
end
for k, v in pairs(t) do
print(k, v)
end