local function create_churner(size)
local temp_tables = {}
for i = 1, size do
local temp_table = { __mode = "kv" }
setmetatable(temp_table, { __mode = "kv" })
temp_tables[i] = temp_table
end
return function()
for i = 1, #temp_tables do
local temp_table = temp_tables[i]
temp_table[{}] = {}
end
collectgarbage()
end
end