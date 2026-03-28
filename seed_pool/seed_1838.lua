local function churn_memory()
for i = 1, 10000 do
local tmp_table = {}
setmetatable(tmp_table, {__mode = "kv"})
for j = 1, 1000 do
tmp_table[j] = j
end
tmp_table = nil
collectgarbage()
end
end