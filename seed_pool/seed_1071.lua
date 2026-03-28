local function churn_memory()
local table_count = 10000
for i = 1, table_count do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
for j = 1, 10000 do
temp_table[j] = j
end
temp_table = nil
collectgarbage()
end
end
churn_memory()