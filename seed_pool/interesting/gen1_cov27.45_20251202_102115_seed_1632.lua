function coroutine_recursion(level)
  local co = coroutine.create(function()
    if level > 0 then
      coroutine_recursion(level - 1)
    end
  end)
  local status, result = coroutine.resume(co)
  return result
end

return function()
  -- Create a table with a __gc metamethod that simulates userdata finalization
  local t = {}
  setmetatable(t, {__gc = function(t)
    print("Finalizing userdata")
  end})

  -- Force garbage collection
  collectgarbage()
end