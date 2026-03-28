local t = {}
for i = 1, 1000 do
t[tostring(i)] = i
t[i] = i
end
for i = 1, 1000 do
t[tostring(i) .. "a"] = i
t[tostring(i) .. "b"] = i
end