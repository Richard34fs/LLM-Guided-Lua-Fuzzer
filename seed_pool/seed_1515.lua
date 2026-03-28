local t = {}
t["a"] = "b"
print(type(t))
print(type(t["a"]))
for i=1,5 do
t[i] = i * 2
print(type(t[i]))
end
print(type(t))