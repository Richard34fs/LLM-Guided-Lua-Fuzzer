local function create_metatable(value)
local metatable = {
__index = value,
__newindex = function() end,
__add = function(a, b) return a end,
__call = function(self, ...)
if self ~= metatable then
return create_metatable(self)
end
end,
}
setmetatable(value, metatable)
return value
end