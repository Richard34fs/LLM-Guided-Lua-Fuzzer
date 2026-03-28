local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local temp_table = { __mode = "k" }
temp_tables[i] = temp_table
for j = 1, 10000 do
temp_table[j] = {}
end
end
for i = 1, #temp_tables do
temp_tables[i] = nil
end
collectgarbage()
end