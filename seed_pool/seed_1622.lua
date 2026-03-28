local function churn_memory()
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
for j = 1, 1000 do
temp_table[{}] = j
end
temp_table = nil
collectgarbage()
end
end
churn_memory()