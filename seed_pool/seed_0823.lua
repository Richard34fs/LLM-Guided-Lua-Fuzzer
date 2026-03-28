local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local temp_table = { key = "value" }
setmetatable(temp_table, { __mode = 'k' })
temp_tables[i] = temp_table
temp_table = nil
end
for i = 1, 1000 do
collectgarbage()
end
end
churn_memory()