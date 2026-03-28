local table_insert = table.insert
local ipairs = ipairs
local print = print

local t = {}
t.__index = t
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function() return t end
setmetatable(t, t)