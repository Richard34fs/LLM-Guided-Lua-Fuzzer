local t = {}
local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) t[k] = v end,
__add = function(a, b) return a end,
__call = function(t, ...) t(...) end
}
setmetatable(t, mt)
local function create_cyclic_reference()
local t1 = {}
local t2 = {__index = t1}
setmetatable(t1, t2)
return t1
end