function finalizer(table)
    print("Table has been garbage collected")
end
a = {3,4}
setmetatable(a, {__gc = finalizer})
b = {"5",6}
for i=1,#a do
    a[b[i]] = a[i] + b[i]
end
print(a[b[2]])