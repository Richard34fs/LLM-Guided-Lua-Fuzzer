local function get_cyclic_metatables(n)
local t = {}
local mt = {
__index = t,
__newindex = t,
__add = function(a, b)
return a + b
end,
__call = function(a, ...)
return a(...)
end,
}
setmetatable(t, mt)
return t
end