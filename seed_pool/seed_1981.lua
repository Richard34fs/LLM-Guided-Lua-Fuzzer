local t = {}
for i = 1, 1000 do
t[i] = "value" .. i
end
for j = 1, 1000 do
t["key" .. j] = "value" .. j
end