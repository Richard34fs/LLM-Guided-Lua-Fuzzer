t = {}
for i=0,9 do
    t[i] = 0
end
for k,v in pairs(t) do
    t[k] = v + "1"
end
for k,v in pairs(t) do
    t[k] = v * 2
end
for k,v in pairs(t) do
    t[k] = tostring(v)
end
print(table.concat(t))