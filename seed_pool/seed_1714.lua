local meta = {}
meta.__index = meta
meta.__newindex = meta
meta.__add = function(a, b) return a end
meta.__call = function() error("Nope.") end
setmetatable(meta, meta)