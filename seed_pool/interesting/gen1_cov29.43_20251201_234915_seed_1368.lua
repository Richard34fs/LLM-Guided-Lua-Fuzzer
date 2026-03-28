local function churn_memory()
  for _ = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'kv'})
    temp_table[1] = 1
    temp_table = nil
    collectgarbage()
  end
end

local function coroutine_function(param1, param2)
  local result1, result2 = called_function(param1, param2)
  return result1, result2
end

local corout = coroutine.create(coroutine_function)
coroutine.resume(corout, 'value1', 'value2')