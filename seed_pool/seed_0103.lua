local function churn_memory()
for i = 1, 1000 do
local tmp_table = {}
setmetatable(tmp_table, {__mode = "kv"})
tmp_table[i] = i
tmp_table = nil
collectgarbage()
end
end
churn_memory()