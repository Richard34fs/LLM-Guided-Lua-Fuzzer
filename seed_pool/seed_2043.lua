local function churn_memory()
local count = 1000000
for i = 1, count do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
setmetatable(temp_table, {__mode = "v"})
temp_table[{}]= {}
collectgarbage()
end
end
churn_memory()