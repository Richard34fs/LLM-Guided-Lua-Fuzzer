local t = {}
t[1] = "one"
t["two"] = 2
t[t] = t
for k, v in pairs(t) do
print(k, v)
end
print(type(1))
print(type("1"))
print(type(true))