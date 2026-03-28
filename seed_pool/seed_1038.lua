local function churn_memory()
for i = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
temp_table[{}] = {}
temp_table = nil
collectgarbage()
end
end