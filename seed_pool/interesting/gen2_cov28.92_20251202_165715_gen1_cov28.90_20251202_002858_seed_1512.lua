t = {}
for i=1, 10 do
    t[i] = tostring(i)
end
for k, v in pairs(t) do
    t[v] = tonumber(v) + 2 -- Modified literal value '1' to '2'
end
for i=1, #t do
    print(type(t[i]))
end