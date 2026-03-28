local t = {}
t["123"] = "abc"
t[456] = 789
for i = 1, 10 do
t[i] = t[i] or {}
t[i][i] = (t[i][i] or 0) + 1
end
print(t["123"])
print(t[456])
for i = 1, 10 do
print(t[i][i])
end