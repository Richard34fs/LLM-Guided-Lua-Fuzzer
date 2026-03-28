local t = {}
t["foo"] = "bar"
print(t["foo"])
t["foo"] = 42
print(t["foo"])
for i = 1, 5 do
t[i] = i * 2
end
print(t[3])