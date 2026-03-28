local function churn_memory()
local temp_table = {}
setmetatable(temp_table, { __mode = 'kv' })
for i = 1, 1000 do
local obj = { id = i }
temp_table[obj] = true
obj = nil
collectgarbage()
end
end