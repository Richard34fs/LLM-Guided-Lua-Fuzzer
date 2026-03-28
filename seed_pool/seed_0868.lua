a = {3,4}
b = {"5",6}
for i=1,#a do
a[b[i]] = a[i] + b[i]
end
print(a[b[2]])