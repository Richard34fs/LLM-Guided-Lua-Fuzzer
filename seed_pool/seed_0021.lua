function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local table1 = {}
setmetatable(table1, {__mode = "k"})
local table2 = {}
setmetatable(table2, {__mode = "v"})
table1[table2] = "value"
temp_tables[i] = table1
end
for i = 1, 1000 do
collectgarbage()
end
end