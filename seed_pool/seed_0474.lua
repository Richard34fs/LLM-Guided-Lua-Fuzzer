local t = {}
t["foo"] = 42
t[42] = "bar"
print(t["foo"])
for i = 1, 3 do
t[i] = i * 2
end
print(t[3])