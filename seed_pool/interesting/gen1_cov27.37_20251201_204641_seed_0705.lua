function coroutine_stress(n)
  local co = coroutine.create(function()
    for i = n, 1, -1 do
      if i > 0 then
        return i
      end
    end
    return 0
  end)
  return coroutine.resume(co)
end