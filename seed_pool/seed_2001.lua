local function new_metatable()
local mt = {}
mt.__index = mt
mt.__newindex = mt
mt.__add = function(a, b)
return setmetatable({}, getmetatable(a))
end
mt.__call = function(self, ...)
if self ~= getmetatable(self) then
return new_metatable()
end
end
return setmetatable({}, mt)
end
local a = new_metatable()