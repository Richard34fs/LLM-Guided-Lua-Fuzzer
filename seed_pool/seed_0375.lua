local t = {}
t["foo"] = 42
print(t["foo"])
t[42] = "bar"
print(t[42])
for i = 1, 10 do
t[i] = i .. ""
print(t[i])
end