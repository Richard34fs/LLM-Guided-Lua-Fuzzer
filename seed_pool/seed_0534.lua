local function churn_memory()
for i = 1, 100 do
local tmp_table = {}
setmetatable(tmp_table, {__mode = "k"})
tmp_table[i] = i
tmp_table[i] = nil
collectgarbage()
end
end
churn_memory()