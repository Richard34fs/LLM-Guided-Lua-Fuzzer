local function churn_memory()
local temp_tables = {}
for i = 1, 10000 do
local weak_table = setmetatable({}, {__mode = 'kv'})
temp_tables[i] = weak_table
temp_tables[i] = nil
collectgarbage()
end
temp_tables = nil
collectgarbage()
end