local function churn_memory()
local count = 10000
for i = 1, count do
local tmp_table = {}
setmetatable(tmp_table, {__mode = 'k'})
tmp_table[i] = {}
tmp_table[i] = nil
tmp_table = nil
collectgarbage()
end
end