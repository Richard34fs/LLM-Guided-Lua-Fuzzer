function coroutine_recursion(n)
  do
    if n > 0 then
      local co = coroutine.create(function()
        coroutine_recursion(n - 1)
      end)
      coroutine.resume(co)
    else
      error("Stack overflow!")
    end
  end
end

local main_co = coroutine.create(function()
  do
    coroutine_recursion(10000)
  end
end)

coroutine.resume(main_co)