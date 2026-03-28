local t = {}
t["hello"] = "world"
t[1] = 2
print(t["hello"])
print(t[1])
for i=1,5 do
t[i] = i*2
print(t[i])
end