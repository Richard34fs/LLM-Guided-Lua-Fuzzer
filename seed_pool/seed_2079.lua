local function create_churning_script()
local temp_table = {}
setmetatable(temp_table, {__mode = "kv"})
while true do
local churner = {}
temp_table[churner] = true
churner = nil
collectgarbage()
end
end