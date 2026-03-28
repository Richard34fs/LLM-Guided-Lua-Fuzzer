function churn_memory()
  for i = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = "k"})
    local j = 1
    while j <= 1000 do
      temp_table[{}] = j
      j = j + 1
    end
    temp_table = nil
    collectgarbage()
  end
end