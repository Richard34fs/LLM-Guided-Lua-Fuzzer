local t = {}
t.__index = t
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function(...) return ... end
setmetatable(t, t)
print(t + 1)
print(t("Hello world"))