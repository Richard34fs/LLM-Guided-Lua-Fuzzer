function churn_memory()
  for i = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'kv'})
    temp_table[i] = i

    pcall(function()
      error("Error injection")   -- Add error injection
      assert(false)             -- Add assertion failure
      temp_table[0] = 0         -- Invalid indexing
    end)
    
    temp_table = nil
    collectgarbage()
  end
end