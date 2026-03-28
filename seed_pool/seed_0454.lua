local t = {}
local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) t[k] = t end,
__add = function(t, o) return setmetatable({}, getmetatable(t)) end,
__call = function(t, ...) return t end
}
setmetatable(t, mt)