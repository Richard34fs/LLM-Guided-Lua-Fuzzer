function memory_churn()
  local function memory_churn_inner()
    local i = 1
    while i <= 100 do
      local temp_table = {}
      setmetatable(temp_table, {__mode = "kv"})
      local function inner_fn()
        return function()
          local temp_table2 = {}
          return temp_table2
        end
      end
      temp_table[1] = {}
      temp_table[2] = {}
      temp_table[3] = nil
      collectgarbage()
      i = i + 1
    end
  end

  memory_churn_inner(function()
    local temp_table = {}
    setmetatable(temp_table, {__mode = "kv"})
    return temp_table
  end)
end