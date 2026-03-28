local t = {}
local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) t[k] = v end,
__add = function(a, b) return a end,
__call = function(t, ...) t(...) end
}
setmetatable(t, mt)
local function cycle()
local x = {}
local y = {x = x}
x.y = y
return x
end