local m = {}
m.__index = m
m.__newindex = m
m.__add = function(a, b)
return a
end
m.__call = function()
return m
end
setmetatable(m, m)
print(m + m())