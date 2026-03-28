function coroutine_recursion(depth)
  if depth > 0 then
    local co = coroutine.create(function()
      -- This is a comment that does not affect the functionality
      coroutine_recursion(depth - 1)
    end)
    coroutine.resume(co)
  else
    print("Recursion reached depth of " .. depth)
  end
end
coroutine_recursion(10000)