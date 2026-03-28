local t = {}
t["foo"] = "bar"
print(type(t["foo"]))
t[42] = true
print(type(t[42]))
t[{}] = 10
print(type(t[{}]))
for k, v in pairs(t) do
print(k, v)
end