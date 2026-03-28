t = {}
a = "3"
b = 2
for i=1,10 do
t[a] = i
a = a + b
b = b * 2
end
print(t["5"])