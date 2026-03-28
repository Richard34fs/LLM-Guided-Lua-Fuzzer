function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local tbl = {}
setmetatable(tbl, {__mode = "k"})
temp_tables[i] = tbl
for j = 1, 1000 do
tbl[j] = {}
end
temp_tables[i] = nil
collectgarbage()
end
end