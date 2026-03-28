local function churn_memory()
local count = 100000
for i = 1, count do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
temp_table[i] = i
temp_table = nil
collectgarbage()
end
end
churn_memory()