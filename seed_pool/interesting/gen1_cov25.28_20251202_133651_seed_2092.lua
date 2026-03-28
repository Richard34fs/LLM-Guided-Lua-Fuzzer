local meta = {}
meta.__index = meta
meta.__newindex = function() end
meta.__add = function(a, b) return a end
meta.__call = function() end
setmetatable(meta, {})
meta.func = function() end
local nested_table = { key1 = "value1", key2 = "value2" }
meta.nested_table = nested_table
meta.extra_field = "some value"
setmetatable(meta, meta)