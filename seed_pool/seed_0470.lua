local meta = {}
meta.__index = meta
meta.__newindex = meta
meta.__add = function(a, b)
return a + b
end
meta.__call = function(t, ...)
return t(...)
end
setmetatable(meta, meta)