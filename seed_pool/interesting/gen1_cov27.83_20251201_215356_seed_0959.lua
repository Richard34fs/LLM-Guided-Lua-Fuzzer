function coroutine_recursion(n)
  local co = coroutine.create(function()
    while n > 0 do
      print("Recursion depth:", n)
      coroutine_recursion(n - 1)
      n = n + 1
    end
  end)

  local status, err = coroutine.resume(co)
  if not status then
    error(err)
  end
end