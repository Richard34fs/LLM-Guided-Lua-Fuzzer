function churn_memory()
local t = {}
setmetatable(t, {__mode = 'k'})
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'v'})
temp_table[i] = string.rep('x', 1024 * 1024)
t[temp_table] = true
temp_table = nil
collectgarbage()
end
end