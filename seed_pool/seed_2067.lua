local t = {}
t[1] = "hello"
t[2] = 3
t[3] = true
t["key"] = t
for i=1, #t do
print(type(t[i]))
end