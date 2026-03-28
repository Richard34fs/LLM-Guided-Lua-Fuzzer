function churn_memory()
local temp_tables = {}
for _ = 1, 100 do
local temp_table = {key = "value"}
setmetatable(temp_table, {__mode = "k"})
temp_tables[#temp_tables + 1] = temp_table
temp_table.key = nil
temp_table = nil
collectgarbage()
end
temp_tables = nil
collectgarbage()
end