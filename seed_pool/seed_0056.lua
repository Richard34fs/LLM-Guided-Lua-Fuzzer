a = {}
for i=1,10 do
a[i] = tostring(i)
end
b = {}
for j=1,10 do
b[j] = tostring(j)
end
c = {}
for k,v in pairs(a) do
c[k] = v .. b[k]
end