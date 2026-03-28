function coroutine_stress(depth)
local co = {
func = function()
  if depth > 0 then
    coroutine_stress(depth - 1)
  end
end
}
setmetatable(co, {
  __index = function()
  return "test"
  end,
  __newindex = function()
  error("This is a test!")
  end,
  __add = function()
  return "test2"
  end,
  __concat = function()
  return "test3"
  end,
  __len = function()
  return 10
  end
})
for i = 1, 1000 do
  co.func()
end
end