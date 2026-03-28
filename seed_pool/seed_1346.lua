a = {}
for i=1,10 do
a[i] = i*2
end
print(a[3])
b = {10,20,30}
c = {}
for i,v in ipairs(b) do
c[v] = v*2
end
print(c["30"])