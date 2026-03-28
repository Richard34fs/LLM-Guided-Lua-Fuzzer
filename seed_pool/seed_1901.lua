local function churn_memory()
for _ = 1, 10 do
local tmp_table = {}
setmetatable(tmp_table, {__mode = 'k'})
tmp_table[1] = {}
collectgarbage()
end
end