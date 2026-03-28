a = "1"
b = {}
for i=1,10 do
a = a + 1
b[a] = 1
a = a * 2
end
print(a)
print(#b)