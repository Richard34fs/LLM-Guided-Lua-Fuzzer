function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local t = { key = "value" }
setmetatable(t, { __mode = "k" })
temp_tables[i] = t
t = nil
collectgarbage()
end
temp_tables = nil
end