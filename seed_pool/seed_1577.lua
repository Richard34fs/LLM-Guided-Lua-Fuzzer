local function meta(t)
local mt = {
__index = t,
__newindex = t,
__add = function() end,
__call = function() end
}
setmetatable(t, mt)
return t
end
local function cycle(...)
for i = 1, select("#", ...) do
meta({...})
end
end