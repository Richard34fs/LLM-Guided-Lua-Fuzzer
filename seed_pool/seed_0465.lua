local t = {}
t.__index = t
t.__newindex = function(t, k, v)
rawset(t, k, v)
t[k] = v
end
t.__add = function(a, b)
return a .. b
end
t.__call = function(t, ...)
print(...)
end