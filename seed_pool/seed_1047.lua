local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local tmp = {key = "value"}
setmetatable(tmp, {__mode = "k"})
temp_tables[i] = tmp
tmp = nil
collectgarbage()
end
end