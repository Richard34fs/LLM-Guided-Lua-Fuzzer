local function create_abusive_metatable(t)
local metatable = {
__index = t,
__newindex = t,
__add = function() end,
__call = function() end
}
setmetatable(t, metatable)
return t
end