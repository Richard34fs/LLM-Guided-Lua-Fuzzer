do
    local meta = {}
    meta.__index = meta
    meta.__newindex = function() end
    meta.__add = function(a, b) return a end
    meta.__call = function(t) t.x = t end
    setmetatable({}, meta)
    for i = 1, 10 do
        meta.x = meta
    end
end