local function create_metatable()
local t = {}
setmetatable(t, {
__index = t,
__newindex = function() end,
__add = function() return t end,
__call = function() error("Cyclic metatable reference") end,
})
return t
end
local mt = create_metatable()