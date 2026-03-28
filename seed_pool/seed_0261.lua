local function churn_memory()
for _ = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
temp_table.key = temp_table
collectgarbage()
end
end