function mixTypes(a, b)
local t = {}
for i = 1, a do
t[i] = tostring(b + i)
end
for j = 1, b do
t[j] = t[j] .. j
end
return t
end