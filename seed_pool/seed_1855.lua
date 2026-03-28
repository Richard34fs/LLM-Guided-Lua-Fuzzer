function churn_memory()
local table_count = 1000
for i = 1, table_count do
local tmp_table = {}
setmetatable(tmp_table, {__mode = "k"})
tmp_table = nil
collectgarbage()
end
end