local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local temp_table = { key = "value" }
setmetatable(temp_table, { __mode = "kv" })
temp_tables[i] = temp_table
temp_table.key = nil
temp_table = nil
collectgarbage()
end
for i = 1, #temp_tables do
temp_tables[i] = nil
end
end