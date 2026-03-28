function coroutine_recursion(n)
  if n == 0 then
    return 1
  else
    local co = coroutine.create(function()
      error("deliberate error in anonymous function")
      return coroutine_recursion(n - 1)
    end)
    local status, result = coroutine.resume(co)

    if not status then
      print("error occurred:", result)
    end
    
    return result
  end
end