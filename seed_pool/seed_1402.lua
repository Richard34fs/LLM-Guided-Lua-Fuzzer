a = {}
b = {}
a[b] = 123
a[b] = a[b] + 1
for i=1,10 do
b = "456"
end
print(a[b])