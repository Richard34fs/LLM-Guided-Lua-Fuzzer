local function factory(t)
local meta = {
__index = t,
__newindex = function() end,
__add = function(a, b) return a end,
__call = function(...) return ... end
}
setmetatable(t, meta)
return t
end
local t = factory({})
local x = t + t(t)