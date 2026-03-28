local t = {}  -- Insert a new value
t.__index = t
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function(...) return ... end
setmetatable(t, t)
print(t + 1)  -- Add an extra argument
print(t("Hello world"))  -- Change the number of arguments