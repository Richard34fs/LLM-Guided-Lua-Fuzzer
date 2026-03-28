local t = {}
t["a"] = 10
t[2] = "b"
t[3] = true
for i=1,3 do
if type(t[i]) == "number" then
t[i] = t[i] * 2
elseif type(t[i]) == "string" then
t[i] = t[i] .. t[i]
else
t[i] = not t[i]
end
end
print(t["a"], t[2], t[3])