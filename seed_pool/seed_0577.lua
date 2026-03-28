function churn_memory()
for _ = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
temp_table = nil
collectgarbage()
end
end