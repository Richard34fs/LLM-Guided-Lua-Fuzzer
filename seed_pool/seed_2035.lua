function churn_memory()
for i = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
temp_table[1] = i
temp_table[2] = i * 2
temp_table[3] = i * 3
temp_table = nil
collectgarbage()
end
end