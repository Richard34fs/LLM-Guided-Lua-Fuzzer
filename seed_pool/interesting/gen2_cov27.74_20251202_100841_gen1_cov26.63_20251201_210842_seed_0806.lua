function churn_memory()
  local count = 100000
  local i = 1
  while i <= count do
    local temp_table = {}
    setmetatable(temp_table, {__mode = "k"})
    temp_table[i] = {}
    temp_table = nil
    collectgarbage()
    i = i + 1
  end
end