local t = {}
local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) t[k] = t end,
__add = function(a, b) return a end,
__call = function(f, ...) f(...) end
}
setmetatable(t, mt)
local function create_cyclic_reference()
local a = {}
local b = { [1] = a }
a[2] = b
return a
end
local cyclic_ref = create_cyclic_reference()