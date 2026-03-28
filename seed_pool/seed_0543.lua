local meta = {}
meta.__index = meta
meta.__newindex = meta
meta.__add = function(a, b)
return a
end
meta.__call = function(func, ...)
func(...)
return func
end
setmetatable(meta, meta)