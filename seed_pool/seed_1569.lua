local t = {}
for i=1,10 do
t[i] = i
t[i] = tostring(t[i])
t[i] = tonumber(t[i])
end
print(t[5] + 5)