local function churn_memory()
for _ = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
for i = 1, 1000 do
temp_table[i] = {}
end
temp_table = nil
collectgarbage()
end
end