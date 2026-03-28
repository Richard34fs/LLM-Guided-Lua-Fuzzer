local a = {}
a[1] = a
a.__index = a
a.__newindex = function(t, k, v)
t[k] = v
end
a.__add = function(a, b)
return a + b
end
a.__call = function(f, ...)
return f(...)
end