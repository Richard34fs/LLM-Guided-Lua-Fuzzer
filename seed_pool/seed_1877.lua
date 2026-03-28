local t = {}
t["10"] = "ten"
t[10] = 10
print(t["10"])
print(t[10])
for i = 1, #t do
print(t[i])
end