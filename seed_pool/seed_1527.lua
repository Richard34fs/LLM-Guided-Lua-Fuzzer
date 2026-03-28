local function churn_memory()
local table_count = 10000
for i = 1, table_count do
local weak_table = setmetatable({}, {__mode = 'kv'})
for j = 1, 100 do
local temp_table = {value = j}
weak_table[temp_table] = true
end
weak_table = nil
collectgarbage()
end
end
churn_memory()