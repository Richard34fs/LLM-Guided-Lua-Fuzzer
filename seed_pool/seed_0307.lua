local t = {}
t["foo"] = 42
t["bar"] = "hello"
for i = 1, 5 do
t[i] = i * 2
end
print(t["foo"] + t[3])