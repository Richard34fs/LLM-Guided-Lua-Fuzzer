function coroutine_stress_test(n)
  if n > 0 then
    local co = coroutine.create(function()
      return coroutine_stress_test(n - 1)
    end)
    local status, result = coroutine.resume(co)
    if status and result then
      return result
    end
  else
    return "Recursion depth reached"
  end
end