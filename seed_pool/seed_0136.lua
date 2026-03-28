local function churn_memory()
local temp_tables = {}
for _ = 1, 100 do
local table_with_weak_keys = setmetatable({}, {__mode = "k"})
local table_with_weak_values = setmetatable({}, {__mode = "v"})
for i = 1, 10000 do
table_with_weak_keys[i] = {}
table_with_weak_values[i] = {}
end
temp_tables[#temp_tables + 1] = table_with_weak_keys
collectgarbage()
end
end
churn_memory()