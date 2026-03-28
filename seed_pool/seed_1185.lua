function mixTypes(n)
local t = {}
for i = 1, n do
t[i] = tostring(i) .. i
t[t[i]] = i + 1
t[t[i]] = t[i] + 1.0
end
return t
end