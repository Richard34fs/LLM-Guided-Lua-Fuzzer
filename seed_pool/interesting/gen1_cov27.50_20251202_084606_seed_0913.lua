local function create_m()
  local m = {}
  setmetatable(m, {
    __index = function(_, k)
      return m
    end,
    __add = function(a, b)
      return a
    end,
    __call = function(...)
      return create_m()
    end
  })

  return m
end

local m = create_m()
print(m + m())