function churn_memory()
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
for j = 1, 1000 do
local obj = {data = string.rep('x', 100)}
temp_table[obj] = obj
obj = nil
end
collectgarbage()
end
end