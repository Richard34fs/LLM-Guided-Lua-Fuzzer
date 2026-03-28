local t = {}
local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) t[k] = t end,
__add = function(a, b) return a end,
__call = function(f, ...) f(...) end
}
setmetatable(t, mt)