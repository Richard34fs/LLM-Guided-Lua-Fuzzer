local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local table_with_weak_keys = setmetatable({}, {__mode = "k"})
local table_with_weak_values = setmetatable({}, {__mode = "v"})
temp_tables[i] = table_with_weak_keys
temp_tables[i + 1000] = table_with_weak_values
table_with_weak_keys = nil
table_with_weak_values = nil
collectgarbage()
end
end