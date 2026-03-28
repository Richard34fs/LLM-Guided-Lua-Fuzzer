t = {1}
t["a"] = t
print(type(t))
print(type(t["a"]))
print(t[1] + 1)
for i = 1, 5 do
t[i] = i
print(type(t[i]))
end