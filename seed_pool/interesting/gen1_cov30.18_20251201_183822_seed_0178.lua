local t = {}
for i = 1, 1000 do
  t[i] = i * 2
  t["key" .. i] = i * 3
end
local mt = {
  __gc = function(self)
    -- finalizer logic goes here
  end
}
setmetatable(t, mt)  -- set metatable with __gc on table t