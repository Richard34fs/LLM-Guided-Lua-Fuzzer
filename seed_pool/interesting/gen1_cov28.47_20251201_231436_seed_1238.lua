local function churn_memory()
  local count = 100000
  for _ = 1, count do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'k'})
    temp_table[{}] = {}
    collectgarbage()
  end
end

do
  local function churn_memory()
    local count = 100000
    for _ = 1, count do
      local temp_table = {}
      setmetatable(temp_table, {__mode = 'k'})
      temp_table[{}] = {}
      collectgarbage()
    end
  end

  churn_memory()
end