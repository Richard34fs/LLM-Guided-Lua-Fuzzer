function churn_memory()
for _ = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
temp_table[{}] = {}
collectgarbage()
end
end