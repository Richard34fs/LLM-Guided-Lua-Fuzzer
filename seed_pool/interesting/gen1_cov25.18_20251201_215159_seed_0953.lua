local meta = {
  __index = function(t, k) return t end,
  __newindex = function(t, k, v) rawset(t, k, v) end,
  __add = function(a, b) return a end,
  __call = function(...) return ... end
}
local obj = {}
setmetatable(obj, meta)
do
  local meta = {
    __index = function(t, k) return t end,
    __newindex = function(t, k, v) rawset(t, k, v) end,
    __add = function(a, b) return a end,
    __call = function(...) return ... end
  }
  local obj = {}
  setmetatable(obj, meta)
end