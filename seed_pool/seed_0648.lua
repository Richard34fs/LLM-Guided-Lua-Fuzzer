local t = {}
for i = 1, 1000 do
t[i] = "value" .. i
t["key" .. i] = i
end
for k, v in pairs(t) do
print(k, v)
end