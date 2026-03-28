local function create_churner(size)
  return setmetatable({}, {
    __mode = 'kv',
    __gc = function(t)
      for k, v in pairs(t) do
        t[k] = nil
      end
      collectgarbage()
    end
  })
end

local churner = create_churner(10000)
for i = 1, 10000 do
  churner[i] = {}
end

-- Mutate the code to test garbage collection and finalizers
local function mutate_gc()
  local churner = create_churner(10000)
  for i = 1, 10000 do
    churner[i] = {}
  end

  -- Force garbage collection by setting the table to nil
  churner = nil
  collectgarbage()
end

mutate_gc()