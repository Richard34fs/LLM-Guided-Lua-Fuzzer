local t = {}
local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) t[k] = t end,
__add = function(a, b) return a end,
__call = function(f, ...) f(...) end
}
setmetatable(t, mt)
local function create_cycle()
local a = {}
local b = {a = a}
a.b = b
return a
end