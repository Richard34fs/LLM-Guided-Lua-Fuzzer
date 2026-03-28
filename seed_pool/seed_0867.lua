local function churn_memory()
local temp_tables = {}
for i = 1, 100000 do
local t = setmetatable({}, {__mode = "kv"})
temp_tables[t] = true
t = nil
end
collectgarbage()
end