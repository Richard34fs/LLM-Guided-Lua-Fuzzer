local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local t = setmetatable({}, { __mode = 'kv' })
temp_tables[i] = t
end
for i = 1, 100 do
for k, v in pairs(temp_tables[i]) do
temp_tables[i][k] = nil
end
collectgarbage()
end
end