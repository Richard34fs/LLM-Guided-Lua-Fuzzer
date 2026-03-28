function churn_memory()
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
for i = 1, 1000 do
local obj = {i}
temp_table[obj] = true
if i % 5 == 0 then
obj = nil
collectgarbage()
end
end
end