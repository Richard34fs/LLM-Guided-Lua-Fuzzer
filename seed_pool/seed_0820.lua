local t = {}
for i = 1, 1000 do
t[tostring(i)] = i
t[i] = i
end
t["1"] = 1
t["2"] = 2