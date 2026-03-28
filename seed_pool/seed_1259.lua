local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local weak_table = setmetatable({}, {__mode = "kv"})
temp_tables[i] = weak_table
weak_table = nil
end
for i = 1, 1000 do
collectgarbage()
end
end