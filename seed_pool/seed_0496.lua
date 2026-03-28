function mixTypes(n)
local t = {}
for i = 1, n do
t[i] = i
t[i] = tostring(t[i])
t[i] = tonumber(t[i])
end
return t
end