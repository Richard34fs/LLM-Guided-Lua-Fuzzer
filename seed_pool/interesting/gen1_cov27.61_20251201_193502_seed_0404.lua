local function churn_memory()
  while true do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'kv'})
    local i = 1  -- Initializing the loop variable
    while i <= 100000 do  -- Modifying the condition
      temp_table[i] = i
      i = i + 1  -- Incrementing the loop variable
    end
    temp_table = nil
    collectgarbage()
  end
end