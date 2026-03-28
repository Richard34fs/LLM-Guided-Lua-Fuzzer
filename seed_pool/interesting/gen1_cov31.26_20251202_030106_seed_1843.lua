function coroutine_stress(depth)
  local function helper()
    if depth > 0 then
      coroutine_stress(depth - 1)
    end
  end
  local co = coroutine.create(helper)
  for i = 1, depth do
    coroutine.resume(co)
  end
end
coroutine_stress(10000)