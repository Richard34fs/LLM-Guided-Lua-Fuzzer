local t = {}
t["foo"] = 42
t[5] = "bar"
for i = 1, 5 do
t[i] = i * 2
end
print(t["foo"])
print(t[5])
for i = 1, 5 do
print(t[i])
end