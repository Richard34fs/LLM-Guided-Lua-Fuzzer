local function churn_memory()
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
for i = 1, 1000 do
temp_table[i] = {}
temp_table[i].key = i
temp_table[i] = nil
end
collectgarbage()
end