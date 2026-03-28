function confuse(a)
local t = {}
for i=1,#a do
if type(a[i]) == "number" then
t[a[i]] = a[i] + 1
elseif type(a[i]) == "string" then
t[a[i]] = #a[i] * 2
else
t[i] = a[i]
end
end
return t
end