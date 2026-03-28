a = {}
a[1] = "1"
for i=2,10 do
    a[i] = a[i-1] + 1
end
print(a[10])