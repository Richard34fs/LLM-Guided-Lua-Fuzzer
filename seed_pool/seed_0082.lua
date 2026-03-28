function mixTypes(a)
local t = {}
for i=1,#a do
if type(a[i]) == "number" then
a[i] = tostring(a[i])
else
a[i] = tonumber(a[i])
end
t[a[i]] = true
end
return t
end