local function churn_memory()
for i = 1, 100 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
for j = 1, 1000 do
temp_table[j] = j
end
temp_table = nil
collectgarbage()
end
end