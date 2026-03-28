local function churn_memory()
  do
    for i = 1, 10000 do
      local tmp_table = {}
      setmetatable(tmp_table, {__mode = "k"})
      tmp_table[1] = {}
      tmp_table = nil
      collectgarbage()
    end
  end
end