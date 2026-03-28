local function churn_memory()
local table_count = 10000
local key_count = 1000
for i = 1, table_count do
local t = {}
setmetatable(t, {__mode = "k"})
for j = 1, key_count do
t[{}] = j
end
t = nil
collectgarbage()
end
end