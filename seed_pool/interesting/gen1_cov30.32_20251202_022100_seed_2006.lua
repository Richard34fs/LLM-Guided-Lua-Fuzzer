function coroutine_stress(deep)
  local co = coroutine.create(function()
    do
      if deep > 0 then
        coroutine_stress(deep - 1)
      end
    end
  end)
  return co
end
local max_deep = 15
for i = 1, max_deep do
  local co = coroutine_stress(i)
  assert(coroutine.resume(co))
end