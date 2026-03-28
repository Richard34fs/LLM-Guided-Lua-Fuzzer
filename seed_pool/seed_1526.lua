local function metatable_abuse()
local table = {}
local metatable = {
__index = function(t, k) return t[k] end,
__newindex = function(t, k, v) t[k] = v end,
__add = function(t, o) return setmetatable(o, getmetatable(t)) end,
__call = function(t, ...) return t end
}
setmetatable(table, metatable)
table.self_reference = table
table.cyclic_reference = table + {}
return table
end