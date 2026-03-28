local t = {}
t["foo"] = 42
t["bar"] = "hello" .. " world"
for i = 1, #t do
t[i] = true
end
print(t["foo"] + #t["bar"])