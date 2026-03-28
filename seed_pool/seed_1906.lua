local meta = {
__index = function(t, k)
return rawget(meta, k)
end,
__newindex = function(t, k, v)
rawset(meta, k, v)
end,
__add = function(a, b)
return a + b
end,
__call = function(...)
return ...
end
}
setmetatable(meta, meta)