local t = {}
for i=1,10 do
t[i] = i
end
for k,v in pairs(t) do
t[k] = tostring(v)
end
for k,v in pairs(t) do
t[k] = v .. k
end
for k,v in pairs(t) do
t[k] = tonumber(v)
end