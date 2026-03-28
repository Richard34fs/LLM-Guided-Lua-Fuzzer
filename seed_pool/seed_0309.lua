local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
temp_tables[i] = temp_table
for j = 1, 1000 do
temp_table[j] = j
end
temp_table = nil
end
collectgarbage()
end