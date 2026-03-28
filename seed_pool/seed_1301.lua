function mixTypes(n)
local t = {}
for i = 1, n do
t[i] = i
end
for k, v in pairs(t) do
t[k] = tostring(v)
end
for k, v in pairs(t) do
t[k] = tonumber(v) + 1
end
return t
end