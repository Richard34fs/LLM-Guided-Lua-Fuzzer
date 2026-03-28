function finalizer(table)
    print("Table has been garbage collected")
end
local a = {3,4}
setmetatable(a, {__gc = finalizer})
b = {"5",6}
for i=1,#a do
    a[b[i]] = a[i] + b[i]
end
print(a[b[2]])
a = 3
local b = "5"
if true then
    local c = {3,4}
    setmetatable(c, {__gc = finalizer})
    print(c)
end