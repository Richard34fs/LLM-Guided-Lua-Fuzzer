local function create_churner()
local objects = {}
return function()
local temp = {__mode = 'kv'}
setmetatable(objects, temp)
temp = nil
collectgarbage()
end
end