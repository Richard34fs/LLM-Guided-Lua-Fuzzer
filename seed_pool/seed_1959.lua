local t = {}
local m = {
__index = function() return m end,
__newindex = function(_, _, _) m.__call = function() return m end end,
__add = function(a, b) return a end,
__call = function() return m end
}
setmetatable(t, m)