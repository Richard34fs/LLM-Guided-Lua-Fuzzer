local t = {}
for i = 1, 1000 do
t[i] = "value" .. i
end
for i = 1001, 2000 do
t["key" .. i] = "value" .. i
end