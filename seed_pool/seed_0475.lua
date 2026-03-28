local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local weak_table = setmetatable({}, {__mode = "kv"})
temp_tables[i] = weak_table
weak_table.large_table = setmetatable({}, {__mode = "kv"})
for j = 1, 10000 do
weak_table.large_table[j] = {}
end
weak_table.large_table = nil
collectgarbage()
end
temp_tables = nil
collectgarbage()
end