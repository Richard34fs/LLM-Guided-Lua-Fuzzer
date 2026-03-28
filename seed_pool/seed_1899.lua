local t = {}
t.__index = function(self) return self end
t.__newindex = function() error("No new values allowed") end
t.__add = function(self, val)
if type(val) == "table" then
return setmetatable(val, getmetatable(self))
else
error("Only tables can be added to this metatable")
end
end
t.__call = function() error("This metatable cannot be called") end
setmetatable(t, t)