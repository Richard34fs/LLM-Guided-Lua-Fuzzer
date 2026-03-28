function churn_memory()
for _ = 1, 10 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
for i = 1, 100000 do
temp_table[i] = i
end
temp_table = nil
collectgarbage()
end
end