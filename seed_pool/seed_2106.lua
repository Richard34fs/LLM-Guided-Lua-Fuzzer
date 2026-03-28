t = {}
for i = 1, 1000 do
t[tostring(i)] = i
t[i] = i
end
for k, v in pairs(t) do
print(k, v)
end