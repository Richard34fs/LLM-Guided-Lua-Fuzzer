local t = {}
t["foo"] = "bar"
t[1] = 2
t[t["foo"]] = 3
for i = 1, #t do
t[i] = t[i] + 1
end
print(t["foo"], t[1], t[2])