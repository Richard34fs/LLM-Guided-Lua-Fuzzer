function memory_churn()
local temp_tables = {}
for i = 1, 1000 do
local weak_table = setmetatable({}, {__mode = "kv"})
temp_tables[i] = weak_table
for j = 1, 1000 do
weak_table[{}] = {}
end
temp_tables[i] = nil
collectgarbage()
end
end