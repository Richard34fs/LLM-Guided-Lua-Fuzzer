local t = {}
t.__index = function() return t end
t.__newindex = function(t, k, v) rawset(t, k, v); t[k] = v end
t.__add = function(a, b) return a end
t.__call = function(...) return ... end
setmetatable(t, t)
local x = t + 1
x.foo = 'bar'
print(x(), x.foo)