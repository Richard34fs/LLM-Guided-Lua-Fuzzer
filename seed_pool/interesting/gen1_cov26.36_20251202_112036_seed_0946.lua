local function churn_memory()
  for i = 1, 1000 do
    local table_with_weak_keys = setmetatable({}, {__mode  = "k"})
    local table_with_weak_values = setmetatable({}, {__mode  = "v"})
    table_with_weak_keys[1]   = table_with_weak_values
    table_with_weak_values[1] = table_with_weak_keys
    table_with_weak_keys[1]   = nil
    table_with_weak_values[1]  = nil
  collectgarbage()
  end
end