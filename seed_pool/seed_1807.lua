function churn_memory()
local temp_table = {}
setmetatable(temp_table, { __mode = 'kv' })
while true do
local object = {}
temp_table[object] = true
object = nil
collectgarbage()
end
end