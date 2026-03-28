local function churn_memory()
local temp_tables = {}
for i = 1, 1000 do
local tmp_table = {}
setmetatable(tmp_table, { __mode = "kv" })
temp_tables[i] = tmp_table
end
for _, tmp_table in pairs(temp_tables) do
tmp_table = nil
end
collectgarbage()
end
for i = 1, 1000 do
churn_memory()
end