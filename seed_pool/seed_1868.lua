t = {}
for i=1,10 do
t[i] = tostring(i)
end
for k,v in pairs(t) do
t[k] = tonumber(v)
end
for k,v in pairs(t) do
t[k] = v + 1
end
print(table.concat(t, ","))