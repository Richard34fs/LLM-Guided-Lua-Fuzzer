local t = {}
local m = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) rawset(t, k, v) end,
__add = function(a, b) return a end,
__call = function(f, ...) f(...) end
}
setmetatable(t, m)
local function create_cyclic_reference()
local a = {}
local b = {next = a}
a.next = b
return a
end