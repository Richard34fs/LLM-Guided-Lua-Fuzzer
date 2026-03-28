local t = {}
t["a"] = 0
for i=1,10 do
t["a"] = t["a"] + "1"
t[i] = i
end
print(t["a"])
print(t[2])