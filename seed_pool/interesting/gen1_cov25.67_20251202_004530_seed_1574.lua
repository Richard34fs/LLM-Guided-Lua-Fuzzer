local t = {}
do
  t.__index = function(self)
    return self
  end
  do
    t.__newindex = function()
      error("no")
    end
    do
      t.__add = function(self, other)
        return setmetatable({}, t)
      end
      do
        t.__call = function(self)
          print("hi!")
        end
        setmetatable(t, t)
      end
    end
  end
end