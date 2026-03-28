a = {}
b = {}
c = {}
a[b] = 123
c[b] = "456"
for i=1,10 do
c[b] = c[b] + a[b]
end
print(c[b])