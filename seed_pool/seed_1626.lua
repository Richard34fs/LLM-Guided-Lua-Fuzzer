local t = {}
t["a"] = "b"
print(type(t["a"]))
t[3] = 4
print(type(t[3]))
for i=1,5 do
t[i] = i*2
end
print(t["a"])
print(t[3])
for k,v in pairs(t) do
print(k, v)
end