function churn_memory()
for i = 1, 10000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
temp_table[i] = i
temp_table = nil
collectgarbage()
end
end