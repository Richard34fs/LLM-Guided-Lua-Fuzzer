local t = {}
t[0] = t
setmetatable(t, {
__index = function() return t end,
__newindex = function(_, _, v) t[0] = v end,
__add = function(a, b) return a[0] + b end,
__call = function(f) f() end
})