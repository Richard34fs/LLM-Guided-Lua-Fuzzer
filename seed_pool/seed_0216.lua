local function churn_memory()
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
for i = 1, 10000 do
local obj = {id = i}
temp_table[obj] = true
if i % 2 == 0 then
temp_table[obj] = nil
end
end
collectgarbage()
end
for _ = 1, 100 do
churn_memory()
end