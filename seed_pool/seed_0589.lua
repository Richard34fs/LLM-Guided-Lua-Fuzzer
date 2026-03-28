a = {}
for i=1,10 do
a[i] = i
end
for k,v in pairs(a) do
a[k] = tostring(v)
end
for k,v in pairs(a) do
a[k] = tonumber(v) + 1
end
print(a[5])