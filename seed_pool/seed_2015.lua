local function create_churning_script()
local temp_tables = {}
for i = 1, 1000 do
local tmp_table = { value = i }
setmetatable(tmp_table, { __mode = "k" })
temp_tables[tmp_table] = true
tmp_table = nil
collectgarbage()
end
return temp_tables
end