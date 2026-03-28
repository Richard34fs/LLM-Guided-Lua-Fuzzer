local t = {}
for i = 1, 10 do
t[i] = tostring(i)
end
for i = 1, 10 do
t[i] = tonumber(t[i]) + i
end
for i = 1, 10 do
t[tostring(t[i])] = nil
end
print(#t)