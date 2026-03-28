local function churn_memory()
  for _ = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__gc = function(t)
      t[1] = nil -- Mutate the table by setting its first element to nil
    end})
    temp_table[1] = 1
  end
end

local function coroutine_function(param1, param2)
  local result1, result2 = called_function(param1, param2)
  return result1, result2
end

local corout = coroutine.create(coroutine_function)
coroutine.resume(corout, 'value1', 'value2')