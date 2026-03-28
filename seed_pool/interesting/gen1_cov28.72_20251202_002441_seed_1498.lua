local function churn_memory()
  for _ = 1, 1000 do
    local temp_table = {}
    setmetatable(temp_table, {__mode = 'k'})
    temp_table[{}] = {}
    collectgarbage()
  end
end

local a, b, c = 1, 2, 3
a = 4
b = 5
c = 6

churn_memory()