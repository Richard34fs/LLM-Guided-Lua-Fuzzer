local function create_churner()
local churner = {}
setmetatable(churner, { __mode = 'kv' })
return function()
local temp_table = {}
setmetatable(temp_table, { __mode = 'v' })
temp_table[1] = 1
churner[temp_table] = true
temp_table = nil
collectgarbage()
end
end