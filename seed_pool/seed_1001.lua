local function churn_memory()
for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
setmetatable(temp_table, {__mode = "v"})
temp_table = nil
collectgarbage()
end
end