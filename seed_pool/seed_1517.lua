function churn_memory()
for i = 1, 1000 do
local tmp_table = {}
setmetatable(tmp_table, {__mode = "k"})
tmp_table[{}] = 1
tmp_table = nil
collectgarbage()
end
end