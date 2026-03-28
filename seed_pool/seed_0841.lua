local t = {}
for i=1,10 do
t[i] = i*2
t[i+1] = t[i]/i
end
print(t[11])