local t = {}
local mt = {
  __index = function(t, k) return t end,
  __newindex = function(t, k, v) t[k] = v end,
  __add = function(t, n) for i=1,n do t = setmetatable({}, mt) end return t end,
  __call = function(t, ...) t(...) return t end
}
setmetatable(t, mt)
function abuse_metatables(n)
  local i = 1
  while i <= n do
    t = setmetatable({}, mt)
    i = i + 1
  end
  return t
end