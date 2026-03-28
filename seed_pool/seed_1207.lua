local t = {}
t[1] = t
setmetatable(t, {
__index = function() return t end,
__newindex = function(_, _, value) t[2] = value end,
__add = function(a, b) return a[1] + b end,
__call = function(self, ...) self[2](...) end
})