local t = {}
t["foo"] = 42
t[2 + 3] = 10
for k, v in pairs(t) do
print(type(k), type(v))
end