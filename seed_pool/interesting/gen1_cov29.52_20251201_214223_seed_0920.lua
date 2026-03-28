local t = {}
t.__index = function() return t end
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function() end
setmetatable(t, t)
do
  local function print_sum(a, b)
    print(a + b)
  end
  if t then
    print_sum(t, 10)
  end
  do
    local function get_index(a, i)
      return a[i]
    end
    if t then
      print(get_index(t, 1))
    end
  end
end
do
  local function call_t(a, b)
    return t(a, b)
  end
  if t then
    call_t(20)
  end
end