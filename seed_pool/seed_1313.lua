local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local temp_table = setmetatable({}, {__mode = "kv"})
temp_tables[i] = nil
collectgarbage()
end
end