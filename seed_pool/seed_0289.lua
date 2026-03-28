function memory_churn()
for i = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
temp_table[1] = {}
temp_table[2] = {}
temp_table[3] = nil
collectgarbage()
end
end