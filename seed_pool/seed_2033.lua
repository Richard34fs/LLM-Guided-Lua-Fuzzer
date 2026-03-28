local function churn_memory()
local count = 10000
for i = 1, count do
local table_with_weak_keys = setmetatable({}, {__mode = "k"})
local table_with_weak_values = setmetatable({}, {__mode = "v"})
table_with_weak_keys[i] = nil
table_with_weak_values[i] = nil
end
for i = 1, count do
collectgarbage()
end
end