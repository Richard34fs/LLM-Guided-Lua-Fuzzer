local t = {}
local mt = {
__index = function(t, k) return t[k] end,
__newindex = function(t, k, v) t[k] = v end,
__add = function(a, b) return a .. b end,
__call = function(f, ...) return f(...) end
}
setmetatable(t, mt)
local function reference_cycle()
t.next = t
return t
end