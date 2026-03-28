local t = {}
local m = {
__index = function(t, k) return t[k] end,
__newindex = function(t, k, v) t[k] = v end,
__add = function(t, v) return t + v end,
__call = function(t, ...) return t(...) end
}
setmetatable(t, m)