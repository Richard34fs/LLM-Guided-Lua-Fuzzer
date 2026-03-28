local t = {}
for i = 1, 10 do
t[i] = tostring(i)
end
for k, v in pairs(t) do
t[v] = tonumber(k)
end
for i = 1, #t do
if type(t[i]) == "number" then
t[i] = tostring(t[i])
else
t[i] = tonumber(t[i])
end
end