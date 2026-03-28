local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) rawset(t, k, v) end,
__add = function(a, b) return a end,
__call = function(...) return ... end
}
local function create_cyclic_metatable()
local t = {}
setmetatable(t, mt)
return t
end