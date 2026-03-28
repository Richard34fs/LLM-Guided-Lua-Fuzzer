t = {}
for i=1,10 do
t[i] = i*2
end
for k,v in pairs(t) do
t[k] = tostring(v)
end
for k,v in pairs(t) do
t[k] = v .. "foo"
end
for k,v in pairs(t) do
print(k,v)
end