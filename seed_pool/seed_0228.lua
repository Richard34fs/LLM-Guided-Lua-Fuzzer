local t = {}
t[{}] = 1
t[2] = {}
t["3"] = 4
for i=1,10 do
t[i] = i*2
end
print(t[{}])
print(t[2])
print(t["3"])