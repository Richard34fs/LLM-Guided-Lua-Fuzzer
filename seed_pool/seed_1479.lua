local function churn_memory()
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
while true do
for i = 1, 100000 do
local obj = {key = i}
temp_table[obj] = obj
obj = nil
end
collectgarbage()
end
end