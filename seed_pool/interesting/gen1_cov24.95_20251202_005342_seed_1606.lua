local mt = {}
mt.__index = function() end
mt.__newindex = mt
function mt.__add(a, b)
    return a
end
local function f(a)
    return a
end
setmetatable(_G, mt)