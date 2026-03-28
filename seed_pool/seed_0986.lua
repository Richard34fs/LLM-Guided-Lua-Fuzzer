local t = {}
t.__index = t
t.__newindex = t
t.__add = function(a, b)
return a
end
t.__call = function(f, ...)
f(...)
return f
end
return t