a = "1"
b = {}
for i=1,10 do
a = a + 1
b[a] = true
end
c = next(b)
d = c - a
e = tostring(d)
f = {}
for k,v in pairs(b) do
f[k] = v
end
g = #f