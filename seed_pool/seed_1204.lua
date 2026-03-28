local meta = {}
meta.__index = meta
setmetatable(meta, meta)
meta.__newindex = function() end
meta.__add = function(a, b) return a end
meta.__call = function(f) f() end
local t = {1, 2, 3}
setmetatable(t, meta)
print(t[1] + t[2] + t[3])