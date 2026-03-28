function create_memory_churn(count)
for i = 1, count do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
temp_table = nil
collectgarbage()
end
end