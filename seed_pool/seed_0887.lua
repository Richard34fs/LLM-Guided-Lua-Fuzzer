a = {1}
b = "2"
c = 3
d = {}
for i=1,c do
d[a] = b+i
a, b, c = b, c, d[a]
end
print(a,b,c)