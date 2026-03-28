local t = {}
t.__index = function(self)
return self
end
t.__newindex = function()
error("no")
end
t.__add = function(self, other)
return setmetatable({}, t)
end
t.__call = function(self)
print("hi!")
end
setmetatable(t, t)