local function churnMemory()
  local tmp = {}
  setmetatable(tmp, {
    __mode = 'k',
    __add = function(a, b)
      return a + b
    end,
    __concat = function(a, b)
      return a .. b
    end,
    __len = function(a)
      return #a
    end,
    __call = function(a, ...)
      return a(...)
    end
  })
  for i = 1, 10000 do
    local t = {}
    for j = 1, 1000 do
      local x = string.rep('x', 100)
      t[j] = x
    end
    tmp[i] = t
    local function foo()
      return function(tmp)
        local x = string.rep('x', 100)
        return x
      end
    end
  end
  tmp = nil
  collectgarbage()
end