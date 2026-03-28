local function churn_memory()
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
temp_table[i] = string.rep("a", 1024 * 1024)
temp_table[i] = nil
collectgarbage()
end
end
churn_memory()