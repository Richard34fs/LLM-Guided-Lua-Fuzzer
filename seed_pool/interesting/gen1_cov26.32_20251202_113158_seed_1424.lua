local function churn_memory()
  do
    for _ = 1, 100 do
      local temp_table = setmetatable({}, { __mode = 'kv' })
      temp_table[1] = temp_table
      temp_table = nil
      collectgarbage()
    end
  end
end