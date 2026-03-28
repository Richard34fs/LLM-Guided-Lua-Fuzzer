local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
temp_tables[i] = temp_table
temp_table.key = i
temp_table = nil
end
for i = 1, 1000 do
collectgarbage()
end
end