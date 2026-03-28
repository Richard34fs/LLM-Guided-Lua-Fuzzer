local function heavy_metatable(t)
local mt = {
__index = t,
__newindex = t,
__add = function() end,
__call = function() end
}
setmetatable(t, mt)
return t
end
local t = {}
heavy_metatable(t)