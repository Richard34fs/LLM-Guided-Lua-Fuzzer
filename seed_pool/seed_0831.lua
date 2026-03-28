a = "3"
b = 4
c = {10}
for i=1,2 do
a = a + b
b = b - c[1]
c[1] = a * b
end
print(a,b,c[1])