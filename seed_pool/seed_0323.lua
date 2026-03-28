local function churn_memory()
local table_count = 10000
for i = 1, table_count do
local t = setmetatable({}, {__mode = 'kv'})
t = nil
collectgarbage()
end
end