function churn_memory()
  for _ = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, { __mode = 'k' })

    pcall(function()
      temp_table[{}] = {} -- Invalid index operation that triggers an error
      temp_table[{}] = nil -- Invalid index operation that triggers an error
      error('Error message') -- Deliberate error using error() function
    end)

    collectgarbage()
  end
end