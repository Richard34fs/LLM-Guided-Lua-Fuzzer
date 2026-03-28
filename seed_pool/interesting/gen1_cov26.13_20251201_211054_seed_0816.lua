local function churn_memory()
  for i = 1, 10000 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = "k"})
    temp_table = nil
    collectgarbage()
  end
  return nil, nil, nil -- added extra returns
end