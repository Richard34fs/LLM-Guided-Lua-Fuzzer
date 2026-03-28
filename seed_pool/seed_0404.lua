local function churn_memory()
while true do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
for i = 1, 100000 do
temp_table[i] = i
end
temp_table = nil
collectgarbage()
end
end