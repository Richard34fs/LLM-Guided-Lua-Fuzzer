function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local tbl = {}
setmetatable(tbl, {__mode = "k"})
temp_tables[i] = tbl
end
for i = 1, #temp_tables do
temp_tables[i] = nil
collectgarbage()
end
end