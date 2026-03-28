local function churn_memory()
for i = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
temp_table[i] = {}
temp_table[i][1] = i
temp_table[i] = nil
collectgarbage()
end
end
churn_memory()