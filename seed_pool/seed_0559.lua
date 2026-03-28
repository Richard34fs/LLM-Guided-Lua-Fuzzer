local function churn_memory()
for _ = 1, 10 do
local tmp_table = {}
setmetatable(tmp_table, {__mode = "kv"})
tmp_table = nil
collectgarbage()
end
end