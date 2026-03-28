local function churn_memory()
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
temp_table[1] = {}
temp_table[2] = {}
collectgarbage()
end
end
churn_memory()