local function create_metatable(parent)
local metatable = {
__index = parent or metatable,
__newindex = function() end,
__add = function() return 0 end,
__call = function() return true end,
}
setmetatable(metatable, metatable)
return metatable
end
local metatables = {}
for i = 1, 10 do
local parent = metatables[i - 1]
metatables[i] = create_metatable(parent)
end