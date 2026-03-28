local function create_churner()
local temp_tables = {}
return function()
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
temp_tables[temp_table] = true
temp_table = nil
collectgarbage()
end
end