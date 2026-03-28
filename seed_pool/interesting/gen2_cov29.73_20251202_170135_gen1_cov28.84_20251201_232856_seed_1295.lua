local function churn_memory()
  for i = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'kv'})
    temp_table[i] = i * 2
    collectgarbage()
  end

  error("Error injected in the churn_memory function") -- Injected error
end

do
  local function inner_function()
    for i = 1, 100 do
      local temp_table = {}
      setmetatable(temp_table, {__mode = 'kv'})
      temp_table[i] = i * 2
      collectgarbage()
    end
  end

  pcall(inner_function) -- Wrap the call in pcall to catch errors
end