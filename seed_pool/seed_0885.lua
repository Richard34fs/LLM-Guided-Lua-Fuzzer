local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local weak_table = setmetatable({}, {__mode = 'kv'})
temp_tables[i] = weak_table
for j = 1, 100 do
weak_table[j] = {}
end
temp_tables[i] = nil
end
collectgarbage()
end