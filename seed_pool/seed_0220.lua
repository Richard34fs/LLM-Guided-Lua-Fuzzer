function mixTypes(n)
local t = {}
for i = 1, n do
t[i] = tostring(i) .. "a"
t[i] = tonumber(t[i]) + 1
end
return t
end