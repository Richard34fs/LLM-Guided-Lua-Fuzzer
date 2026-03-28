local function churn_memory()
for i = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
temp_table[i] = {}
temp_table[i][i] = i
temp_table = nil
collectgarbage()
end
end