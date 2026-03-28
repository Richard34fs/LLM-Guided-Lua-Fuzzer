local function churn_memory()
for _ = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
temp_table[1] = "Some data"
temp_table[2] = "Some more data"
temp_table = nil
collectgarbage()
end
end