local function churn_memory()
for i = 1, 100 do
local temp_table = setmetatable({}, {__mode = 'k'})
temp_table[i] = {}
temp_table = nil
collectgarbage()
end
end
churn_memory()