function churn_memory()
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
for j = 1, 1000 do
local obj = {id = j}
temp_table[obj] = obj
end
temp_table = nil
collectgarbage()
end
end