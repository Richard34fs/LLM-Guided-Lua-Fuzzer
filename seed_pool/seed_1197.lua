local t = {}
t[2] = "foo"
t["bar"] = 42
for i = 1, 3 do
t[i] = i * 2
end
print(t[1], t[2], t[3])