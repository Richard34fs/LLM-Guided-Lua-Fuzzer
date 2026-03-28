function churn_memory()
local function create_temp_table()
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
return temp_table
end
for _ = 1, 100 do
local temp_table = create_temp_table()
temp_table[1] = {}
temp_table = nil
collectgarbage()
end
end