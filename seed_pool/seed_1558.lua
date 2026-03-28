function create_memory_churn()
local function create_temp_table()
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
return temp_table
end
local temp_tables = {}
for i = 1, 100 do
table.insert(temp_tables, create_temp_table())
end
for i = 1, 100 do
temp_tables[i] = nil
collectgarbage()
end
end