function coroutine_recursion(n)
  if n > 0 then
    local co = coroutine.create(function()
      return coroutine_recursion(n - 1)
    end)
    return coroutine.resume(co)
  else
    local a, b, c = "base", "case", 123    -- Multiple declarations
    local d = {456, 789}                 -- Simple declaration
    local e                              -- Single declaration
    e = 1011                             -- Assignment in separate line
    return a .. b .. c .. table.concat(d) .. e
  end
end
coroutine_recursion(10000)