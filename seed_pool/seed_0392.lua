local t = {}
local mt = {
__index = function(t, k) return t end,
__newindex = function(t, k, v) t[k] = v end,
__add = function(t, o) return setmetatable(o, getmetatable(t)) end,
__call = function(t, ...) local f = t.__call; return f(...) end
}
setmetatable(t, mt)
local function cycle()
return t + t + t + t + t
end