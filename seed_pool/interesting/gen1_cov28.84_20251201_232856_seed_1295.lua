local function churn_memory()
  for i = 1, 100 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'kv'})
    temp_table[i] = i * 2
    collectgarbage()
  end
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

  inner_function()
end