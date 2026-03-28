local function churn_memory()
  local temp_table = {}
  setmetatable(temp_table, {__gc = function(t)
    print("Table ", t, " was garbage collected")
  end})
  local i  = 1
  while i <= 100000 do
    local obj = {id = i}
    temp_table[obj] = true
    collectgarbage()
    i  = i + 1
  end
end