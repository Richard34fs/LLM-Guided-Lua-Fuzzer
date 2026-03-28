local function churn_memory()
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
for i = 1, 1000 do
temp_table[i] = {data = string.rep("x", 1000)}
temp_table[i].next = temp_table[i + 1]
end
local head = temp_table[1]
for i = 1, 1000 do
collectgarbage()
end
end