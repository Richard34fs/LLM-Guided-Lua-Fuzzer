local function create_memory_churner()
local table_count = 0
return function()
local temp_table = {}
setmetatable(temp_table, {__mode = 'k'})
for i = 1, 100 do
temp_table[i] = {}
end
table_count = table_count + 1
if table_count % 10 == 0 then
collectgarbage()
end
end
end