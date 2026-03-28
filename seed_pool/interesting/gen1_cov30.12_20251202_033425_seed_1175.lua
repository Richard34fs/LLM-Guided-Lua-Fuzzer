function deepRecursion(n)
  if n <= 0 then
    return
  end
  local co = coroutine.create(function()
    deepRecursion(n - 1)
  end)
  coroutine.resume(co)
  return n, co -- Add an extra return value
end
deepRecursion(10000)