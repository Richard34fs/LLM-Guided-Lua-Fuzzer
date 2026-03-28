local t = {}
local mt = {
  __index = function(t, k) return t end,
  __newindex = function(t, k, v) t[k] = t end,
  __add = function(a, b) return a end,
  __call = function(f, ...) f(...) end,
  -- additional entries added for testing:
  __sub = function(a, b) return a - b end,
  __mul = function(a, b) return a * b end,
  __div = function(a, b) return a / b end,
  __mod = function(a, b) return a % b end,
  __pow = function(a, b) return a ^ b end,
  __unm = function(a) return -a end,
  __len = function(a) return #a end,
  __eq = function(a, b) return a == b end,
  __lt = function(a, b) return a < b end,
  __le = function(a, b) return a <= b end,
  __concat = function(a, b) return a .. b end,
  __tostring = function(a) return tostring(a) end,
  __pairs = function(a) return pairs(a) end,
  __ipairs = function(a) return ipairs(a) end
}
setmetatable(t, mt)