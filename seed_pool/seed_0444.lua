local function self_reference(t)
setmetatable(t, {
__index = t,
__newindex = t,
__add = function() return t end,
__call = function() return self_reference(t) end
})
return t
end
local t = self_reference({})