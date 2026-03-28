local function churn_memory()
for _ = 1, 10 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
for i = 1, 10000 do
local obj = {i}
temp_table[obj] = obj
obj = nil
end
collectgarbage()
end
end