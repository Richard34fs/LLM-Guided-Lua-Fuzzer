local t = {}
t["foo"] = 42
t[2 + 3] = 100
for i = 1, 10 do
  t[i] = i * 2
end
print(t["foo"])
print(t[5])
print(t["3"])