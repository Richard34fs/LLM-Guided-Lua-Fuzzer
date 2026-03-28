function churn_memory()
local t = {}
setmetatable(t, {__mode = 'k'})
for i = 1, 100000 do
local temp_table = {value = i}
t[temp_table] = true
temp_table = nil
collectgarbage()
end
end