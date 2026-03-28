local function churn_memory()
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
for i = 1, 10000 do
local obj = {}
temp_table[obj] = true
obj = nil
end
collectgarbage()
end