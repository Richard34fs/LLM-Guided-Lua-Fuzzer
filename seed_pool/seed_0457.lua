local t = {}
t["a"] = "b"
print(type(t["a"]))
t["a"] = 123
print(type(t["a"]))
for i = 1, 5 do
t[i] = {}
print(type(t[i]))
end