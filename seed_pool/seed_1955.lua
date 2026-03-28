local function churn_memory()
local table_count = 5000
for i = 1, table_count do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
temp_table[{}] = i
temp_table = nil
end
collectgarbage()
end
churn_memory()