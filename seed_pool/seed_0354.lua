local t = {}
for i=1,10 do
t[i] = i
end
for k,v in pairs(t) do
t[k] = v + "1"
end
for k,v in pairs(t) do
t[k] = tonumber(v) * 2
end
print(table.concat(t, ","))