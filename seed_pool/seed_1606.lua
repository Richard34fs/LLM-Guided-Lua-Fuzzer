local mt = {}
mt.__index = mt
mt.__newindex = function() end
mt.__add = function(a, b) return a end
mt.__call = function(a) return a end
setmetatable(_G, mt)