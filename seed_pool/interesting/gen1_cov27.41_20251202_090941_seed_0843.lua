function coroutine_recursion(n)
  local co = setmetatable({}, {
    __call = function()
      return n + coroutine_recursion(n - 1)
    end
  })
  if n == 0 then
    return 0
  else
    return n + coroutine.resume(co)
  end
end