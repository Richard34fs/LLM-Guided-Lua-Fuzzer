local meta = {}
meta.__index = meta
setmetatable(meta, meta)
meta.__newindex = function() end
meta.__add = function(a, b) return a end
meta.__call = function() end