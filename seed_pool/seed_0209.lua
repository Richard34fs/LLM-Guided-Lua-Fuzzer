function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
temp_tables[i] = temp_table
temp_table.key = i
end
for i = 1, 1000 do
temp_tables[i] = nil
end
collectgarbage()
end