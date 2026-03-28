local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local t = setmetatable({}, {__mode = 'kv'})
t = nil
collectgarbage()
end
end