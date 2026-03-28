local t = {}
t[0] = 0
for i=1,10 do
t[i] = t[i-1] + 1
t[i+10] = t[i] / 2
end
print(t[10])