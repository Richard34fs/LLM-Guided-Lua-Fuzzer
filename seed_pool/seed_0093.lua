local t = {}
local mt = {
__index = function(self, key) return self[key] end,
__newindex = function(self, key, value) self[key] = value end,
__add = function(self, other) return setmetatable({}, getmetatable(self)) end,
__call = function(self, ...) return self end
}
setmetatable(t, mt)