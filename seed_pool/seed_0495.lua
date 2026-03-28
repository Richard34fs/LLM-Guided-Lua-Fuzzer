local t = {}
local mt = {
__index = function(t, k) return t[k] end,
__newindex = function(t, k, v) t[k] = v end,
__add = function(a, b) return a end,
__call = function(t, ...) return t end
}
setmetatable(t, mt)
local a, b = t, t