t = {}
for i=1,10 do
t[i] = i*2
end
for k,v in pairs(t) do
if type(k) == "number" then
print(k+v)
else
print(k..v)
end
t[k], t[v] = v, k
end