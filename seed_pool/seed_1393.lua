local t = {}
for i = 1, 10 do
t[i] = tostring(i) .. "a"
end
for k, v in pairs(t) do
t[k] = tonumber(v:sub(1, 1)) + 1
end
for k, v in pairs(t) do
print(type(k), type(v))
end