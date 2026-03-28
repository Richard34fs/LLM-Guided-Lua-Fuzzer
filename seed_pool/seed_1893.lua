function churn_memory()
local weak_table = setmetatable({}, {__mode = 'k'})
while true do
local temp_table = {}
for i = 1, 10000 do
temp_table[i] = i
end
weak_table[temp_table] = true
collectgarbage()
end
end