local t = {}
t.__index = t
t.__newindex = t
t.__add = function(a, b)
    return a, b   -- Add another value to the return list
end
t.__call = function(a, ...)
    return a, ... -- Replace with vararg expression
end
setmetatable(t, t)
print(t + 1)
print(t("foo"))