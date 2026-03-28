function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local temp_table = setmetatable({}, {__mode = "kv"})
temp_tables[i] = temp_table
temp_table = nil
collectgarbage()
end
end