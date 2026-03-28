local t = {}
t["10"] = 10
t[10] = 10
t[10] = t[10] + 1
for i = 1, #t do
print(i, t[i])
end