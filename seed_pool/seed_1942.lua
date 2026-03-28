function create_memory_churn()
local temp_tables = {}
for i = 1, 1000 do
local table_with_weak_keys = setmetatable({}, {__mode = "k"})
local table_with_weak_values = setmetatable({}, {__mode = "v"})
table_with_weak_keys[i] = i
table_with_weak_values[i] = i
table_with_weak_keys[i] = nil
table_with_weak_values[i] = nil
temp_tables[#temp_tables + 1] = table_with_weak_keys
temp_tables[#temp_tables + 1] = table_with_weak_values
collectgarbage()
end
temp_tables = nil
end