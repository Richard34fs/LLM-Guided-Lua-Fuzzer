function churn_memory()
  for _ = 1, 1000 do
    local temp_table = {
      field1 = {},
      field2 = function() end
    }
    setmetatable(temp_table, {__mode = 'k'})
    temp_table.field1[2] = temp_table
    temp_table = nil
    collectgarbage()
  end
end