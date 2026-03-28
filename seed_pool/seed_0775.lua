t = {}
t["10"] = "ten"
t[10] = 10
t[1] = true
for i = 1, #t do
print(type(i), type(t[i]))
end