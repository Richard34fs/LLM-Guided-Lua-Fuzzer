t = {}
for i = 1, 1000 do
t[i] = "value" .. i
end
for i = 999, 1, -1 do
t["key" .. i] = "value" .. i
end