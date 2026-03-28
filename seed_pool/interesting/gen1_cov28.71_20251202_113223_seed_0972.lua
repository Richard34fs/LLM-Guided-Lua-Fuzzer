function churn_memory()
  for _ = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'kv'})
    temp_table[{}] = {}
    collectgarbage()
  end
end

function test_coroutine()
  local function coroutine_func(a, b)
    return a + b
  end

  local co = coroutine.create(coroutine_func)

  local result1 = coroutine.resume(co, 1, 2)
  assert(result1 == true)

  local result2 = coroutine.resume(co, "hello", "world")
  assert(result2 == false)
end