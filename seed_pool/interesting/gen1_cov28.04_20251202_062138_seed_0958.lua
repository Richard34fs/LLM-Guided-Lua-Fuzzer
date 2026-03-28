function coroutine_stress(depth)
  if depth > 0 then
    local co = coroutine.create(function()
      do
        coroutine_stress(depth - 1)
      end
    end)
    coroutine.resume(co)
  else
    local x = 0
    for i = 1, 100000 do
      x = x + i
    end
    return x
  end
end