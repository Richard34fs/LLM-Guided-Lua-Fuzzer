function coroutine_recursion(depth)
  local co
  if depth > 0 then
    co = coroutine.create(
      function()
        return coroutine_recursion(depth - 1)
      end
    )
    local result = coroutine.resume(co)
    return result
  else
    return "Recursion Depth Reached"
  end
end