local function coroutine_function(a, b)
  local coroutine_table = {a, b}
  return coroutine.create(function()
    for _, value in ipairs(coroutine_table) do
      coroutine.yield(value)
    end
  end)
end

assert(coroutine_function(1, 2))