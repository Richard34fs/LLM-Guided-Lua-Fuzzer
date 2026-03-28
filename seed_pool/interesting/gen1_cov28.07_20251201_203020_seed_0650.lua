local t = {}
t[1] = "1"
for i = 2, 10 do
    t[i] = t[i - 1] + 1
end
print(t[10])
t[1] = {}
for i = 2, 10 do
    t[i] = i
end
print(t[10])