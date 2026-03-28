local t = {}
for i = 1, 10 do
t[i] = tostring(i)
end
for k, v in pairs(t) do
t[v] = tonumber(k) * 2
end
print(type(t[5]))