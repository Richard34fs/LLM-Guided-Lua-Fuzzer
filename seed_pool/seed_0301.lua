local function churn_memory()
for _ = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
for i = 1, 10000 do
local obj = {data = i}
temp_table[obj] = true
obj = nil
end
collectgarbage()
end
end