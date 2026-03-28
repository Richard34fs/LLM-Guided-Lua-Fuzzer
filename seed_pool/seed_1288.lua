local t = {}
for i=1,10 do
t[i] = i
end
for k,v in pairs(t) do
print(k .. v)
end