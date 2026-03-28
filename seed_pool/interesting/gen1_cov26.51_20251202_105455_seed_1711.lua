function coroutine_recursion(n)
  if n == 0 then
    return n
  else
    local co = coroutine.create(function()
      return coroutine_recursion(n - 1)
    end)
    local status, result = coroutine.resume(co)
    return status, result
  end
end