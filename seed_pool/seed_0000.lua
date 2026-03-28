local t = {}
t["foo"] = "bar"
t[1] = 2
t[t] = true
for k, v in pairs(t) do
print(type(k), type(v))
end