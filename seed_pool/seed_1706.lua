local t = {}
local m = {
__index = function() return t end,
__newindex = function() error("No new indices allowed!") end,
__add = function(a, b) return a[1] + b[1] end,
__call = function(a, ...) local f = a[1]; return f(...) end
}
setmetatable(t, m)