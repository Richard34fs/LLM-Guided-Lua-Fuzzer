local function churn_memory()
local temp_tables = {}
for i = 1, 10000 do
local table_with_weak_keys = setmetatable({}, {__mode = 'k'})
local table_with_weak_values = setmetatable({}, {__mode = 'v'})
temp_tables[i] = table_with_weak_keys
table_with_weak_keys, table_with_weak_values = nil, nil
collectgarbage()
end
temp_tables = {}
end