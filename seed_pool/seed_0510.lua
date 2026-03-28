function create_memory_churn()
local temp_tables = {}
for i = 1, 100 do
local weak_table = setmetatable({}, {__mode = 'kv'})
temp_tables[i] = weak_table
for j = 1, 10000 do
local object = {id = j}
weak_table[object] = true
end
end
for i = 1, #temp_tables do
temp_tables[i] = nil
end
collectgarbage()
end