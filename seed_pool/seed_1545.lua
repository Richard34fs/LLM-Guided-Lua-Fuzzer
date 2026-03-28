local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local tmp = { a = "b" }
setmetatable(tmp, { __mode = "k" })
temp_tables[i] = tmp
tmp = nil
collectgarbage()
end
temp_tables = nil
collectgarbage()
end
churn_memory()