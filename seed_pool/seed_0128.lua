t = {}
for i = 1, 1000 do
t[i] = "value"
end
for i = 1, 1000 do
t["key" .. i] = "value"
end