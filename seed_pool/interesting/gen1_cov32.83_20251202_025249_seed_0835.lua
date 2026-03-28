function coroutine_recursion(n)
  local co = coroutine.create(function()
    if n > 0 then
      local value = coroutine_recursion(n - 1)
      coroutine.yield(value + 1)
    else
      return 0
    end
  end)
  local status, result = coroutine.resume(co)
  return result
end
local max_depth = 5000
local result = coroutine_recursion(max_depth)
print("The result is", result, "at depth", max_depth)