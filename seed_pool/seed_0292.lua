function churn_memory()
local function create_temp_table()
local temp_table = {}
setmetatable(temp_table, { __mode = 'kv' })
return temp_table
end
local temp_tables = {}
for _ = 1, 100 do
table.insert(temp_tables, create_temp_table())
end
for _, temp_table in ipairs(temp_tables) do
temp_table = nil
end
collectgarbage()
end