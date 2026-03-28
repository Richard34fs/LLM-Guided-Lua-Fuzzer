function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local temp_table = {__mode = 'k'}
temp_tables[temp_table] = true
temp_table = nil
collectgarbage()
end
end