local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local table_with_weak_keys = setmetatable({}, {__mode = "k"})
local table_with_weak_values = setmetatable({}, {__mode = "v"})
table_with_weak_keys = nil
table_with_weak_values = nil
collectgarbage()
end
end