local t = {}
for i = 1, 1000 do
t[i] = i * 2
t[tostring(i)] = i * 3
end
for i = 1, 1000 do
print(t[i], t[tostring(i)])
end