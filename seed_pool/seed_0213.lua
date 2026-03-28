function churn_memory()
local t = {}
setmetatable(t, { __mode = 'k' })
while true do
for i = 1, 10000 do
local temp_table = { key = i }
t[temp_table] = true
temp_table = nil
collectgarbage()
end
end
end