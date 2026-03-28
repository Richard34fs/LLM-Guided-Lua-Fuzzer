a = "1"
b = a + 1
t = {x=a}
a = a + 1
for i=1,10 do
a, b, t.x = i, i, i
end
print(a,b,t.x)