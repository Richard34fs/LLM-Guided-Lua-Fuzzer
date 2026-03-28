function churn_memory()
do
  for _ = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'k'})
    for i = 1, 1000 do
      temp_table[i] = {a = i, b = i * 2}
    end
    temp_table = nil
    collectgarbage()
  end
end
end