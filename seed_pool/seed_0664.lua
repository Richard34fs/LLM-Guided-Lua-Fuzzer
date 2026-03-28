local t = {a=1}
t["a"] = t["a"] + 1
for i=1,10 do
t[i] = i
end
print(t["a"])
print(t[1])
print(t[2])