local function create_churner()
local temp = {}
setmetatable(temp, { __mode = 'kv' })
return function()
for _ = 1, 1000 do
local obj = {}
temp[obj] = true
obj = nil
collectgarbage()
end
end
end