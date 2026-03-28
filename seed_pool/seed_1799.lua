local t = {}
t[1] = "one"
t["two"] = 2
t[t] = t
for k, v in pairs(t) do
print(type(k), type(v))
end