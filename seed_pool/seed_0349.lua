local function churn_memory()
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
for i = 1, 100000 do
local object = {data = i}
temp_table[object] = true
object = nil
if i % 1000 == 0 then
collectgarbage()
end
end
end
churn_memory()