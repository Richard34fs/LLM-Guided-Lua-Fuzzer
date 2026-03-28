function coroutine_recursion(n)
  if n == 0 then
    return 1
  else
    local co = coroutine.create(function()
      return coroutine_recursion(n - 1)
    end)
    local status, result = coroutine.resume(co)
    return result
  end
end
local table_insert = table.insert
table.insert = function(...)
  print("insert called with:", ...)
end
local depth = 1000
local result = coroutine_recursion(depth)
print("Result at depth", depth, ":", result)