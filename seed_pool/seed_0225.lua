local t = {}
t.__index = t
t.__newindex = t
t.__add = function(a, b)
return a
end
t.__call = function()
return t
end
setmetatable(t, t)
print(t + t())