local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local temp_table = setmetatable({}, {__mode = 'kv'})
temp_tables[i] = temp_table
end
for i = 1, 100 do
temp_tables[i].new_table = {}
end
for i = 1, 100 do
temp_tables[i] = nil
end
collectgarbage()
end