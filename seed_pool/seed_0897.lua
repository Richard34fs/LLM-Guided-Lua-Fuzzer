function churn_memory()
local function create_temp_table()
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
return temp_table
end
local temp_tables = {}
for i = 1, 1000 do
temp_tables[i] = create_temp_table()
for j = 1, 1000 do
temp_tables[i][j] = {}
end
collectgarbage()
end
end