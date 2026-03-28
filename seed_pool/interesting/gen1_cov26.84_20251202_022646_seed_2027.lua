local function churn_memory()
  for i = 1, 100 do
    local temp_table = {
      [i] = string.rep('x', 1000)
    }
    setmetatable(temp_table, {__mode = 'k'})
    temp_table[2] = function() return 'hello' end
    temp_table[3] = {a = 1, b = 2}
    temp_table = nil
    collectgarbage()
  end
end