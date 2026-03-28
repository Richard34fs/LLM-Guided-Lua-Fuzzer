local t = {}
for i=1,1000 do
    t[i] = "value" .. i
end
t["key"] = 1
for i=1,1000 do
    t["key" .. i] = i
end