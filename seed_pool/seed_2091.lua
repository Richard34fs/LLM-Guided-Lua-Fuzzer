function churn_memory()
for _ = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
local obj1 = {key = "value"}
local obj2 = {key = "value"}
temp_table[obj1] = obj2
obj1 = nil
collectgarbage()
end
end