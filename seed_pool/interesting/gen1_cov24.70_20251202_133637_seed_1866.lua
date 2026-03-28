local meta = {}
meta.__gc = function(a, b) return a end
meta.__call = function() end
setmetatable({}, meta)