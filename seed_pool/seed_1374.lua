function churn_memory()
for i = 1, 10000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
temp_table[1] = {}
temp_table[1][2] = temp_table
temp_table = nil
collectgarbage()
end
end