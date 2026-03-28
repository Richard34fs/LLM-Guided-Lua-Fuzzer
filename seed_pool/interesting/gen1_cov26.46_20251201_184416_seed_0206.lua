function churn_memory()
  for i = 1, 1000 do
    local tmp_table = {}
    setmetatable(tmp_table, {__mode = "k"})
    tmp_table[i] = {data = i}
    tmp_table[i] = nil
    collectgarbage()
  end
end