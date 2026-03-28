function create_memory_churn(count)
for i = 1, count do
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
for j = 1, 100000 do
temp_table[j] = j
end
temp_table = nil
collectgarbage()
end
end