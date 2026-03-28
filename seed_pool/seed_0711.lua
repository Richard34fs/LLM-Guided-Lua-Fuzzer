local function create_churning_script()
local temp_tables = {}
for i = 1, 100 do
local temp_table = { __mode = 'k' }
setmetatable(temp_table, { __mode = 'v' })
temp_tables[i] = temp_table
temp_table = nil
end
collectgarbage()
end