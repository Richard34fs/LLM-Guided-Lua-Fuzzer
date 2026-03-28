local function churn_memory()
while true do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
for i = 1, 10000 do
temp_table[i] = i
end
temp_table = nil
collectgarbage()
end
end