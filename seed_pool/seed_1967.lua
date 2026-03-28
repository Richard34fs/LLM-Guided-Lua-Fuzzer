function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local tmp = {}
setmetatable(tmp, {__mode = "k"})
temp_tables[i] = tmp
temp_tables[i][i] = i
temp_tables[i] = nil
collectgarbage()
end
end