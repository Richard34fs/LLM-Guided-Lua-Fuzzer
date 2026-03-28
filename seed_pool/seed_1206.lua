local function heavy_metatable(t)
local mt = {
__index = t,
__newindex = t,
__add = function(a, b) return a end,
__call = function() return t end
}
setmetatable(t, mt)
return t
end
local t = {}
heavy_metatable(t)