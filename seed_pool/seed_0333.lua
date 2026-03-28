function churn_memory()
local temp_tables = {}
for _ = 1, 100 do
local temp_table = { __mode = 'k' }
setmetatable(temp_table, { __mode = 'v' })
temp_tables[#temp_tables + 1] = temp_table
temp_table = nil
collectgarbage()
end
end