local function churn_memory()
  local temp_table = {}
  setmetatable(temp_table, {__mode = 'kv'})
  for i = 1, 1000 do
    local object = {data = i}
    temp_table[object] = true
    object = nil
    collectgarbage()
  end

  return temp_table -- ADDED RETURN
end