local t = {}
t.__index = t
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function(a) return a end
setmetatable({}, t)

local i = 1
while i <= #t do
  -- loop body
  i = i + 1
end