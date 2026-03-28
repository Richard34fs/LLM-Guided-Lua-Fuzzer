function churn_memory()
local temp_tables = {}
for _ = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
temp_tables[temp_table] = true
temp_table = nil
collectgarbage()
end
temp_tables = nil
end