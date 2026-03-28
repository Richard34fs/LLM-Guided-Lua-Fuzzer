local meta = {}
meta.__index = meta
meta.__newindex = meta
meta.__add = function(a, b)
return a
end
meta.__call = function(self, ...)
return self
end
setmetatable(meta, meta)
print(meta + meta(meta))