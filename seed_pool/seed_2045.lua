local function churn_memory()
local temp_tables = {}
for i = 1, 10000 do
local tmp = { "foo", "bar", "baz" }
setmetatable(tmp, { __mode = "k" })
temp_tables[tmp] = true
tmp = nil
collectgarbage()
end
end