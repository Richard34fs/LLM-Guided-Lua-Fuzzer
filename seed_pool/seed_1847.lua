local t = {}
for i=1,10 do
local k = tostring(i)
t[k] = i + #k
end
for k,v in pairs(t) do
print(k,v)
end