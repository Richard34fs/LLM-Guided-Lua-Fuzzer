local meta = {}
meta.__call = function() end
meta.__index = meta
setmetatable({}, meta)
collectgarbage("collect")
meta.__newindex = function() end
meta.__add = function(a, b) return a end