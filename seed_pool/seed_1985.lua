t = {}
for i = 1, 10 do
t[i] = tostring(i)
end
for k, v in pairs(t) do
t[v] = tonumber(v) + 1
end
for k, v in pairs(t) do
print(type(k), type(v))
end