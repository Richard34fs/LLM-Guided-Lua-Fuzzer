local t = {}
local m = {
  __index = function() return m end,
  __newindex = function(_, _, _)
    do
      m.__call = function()
        do
          return m
        end
      end
    end
  end,
  __add = function(a, b)
    if a then
      return a
    else
      return b
    end
  end,
  __call = function()
    do
      return m
    end
  end
}
setmetatable(t, m)