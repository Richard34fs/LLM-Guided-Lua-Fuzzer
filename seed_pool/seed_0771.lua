local function churn_memory()
local count = 10000
for i = 1, count do
local tmp_table = {}
setmetatable(tmp_table, {__mode = 'k'})
for j = 1, 1000 do
tmp_table[j] = {}
end
tmp_table = nil
collectgarbage()
end
end