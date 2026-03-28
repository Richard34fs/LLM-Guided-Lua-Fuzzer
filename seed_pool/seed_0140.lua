local m = {}
m.__index = m
setmetatable(m, m)
m.__newindex = function() end
m.__add = function(a, b) return a end
m.__call = function() error("You've been pwned!") end
return m