local function churn_memory()
for _ = 1, 100 do
local tmp_table = {}
setmetatable(tmp_table, {__mode = 'k'})
tmp_table = nil
collectgarbage()
end
end