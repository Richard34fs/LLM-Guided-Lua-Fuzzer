local function add(a, b)
  return a & b  -- Replace '+' with '&' operator
end

local mt = {}
mt.__index = function(t, k) return t[k] end
mt.__newindex = function(t, k, v) t[k] = v end
mt.__add = add
mt.__call = function(f, ...) return f(...) end
local t = {}
setmetatable(t, mt)