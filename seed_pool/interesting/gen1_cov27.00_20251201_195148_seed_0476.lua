function variadic_test(...)
  if select('#', ...) > 0 then
    return variadic_test(...)
  else
    return true
  end
end

function coroutine_test()
  local co = coroutine.create(variadic_test)
  local status, result = coroutine.resume(co, 1, 2, 3)
  if status and result then
    print("Coroutine test successful")
  else
    print("Coroutine test failed")
  end
end