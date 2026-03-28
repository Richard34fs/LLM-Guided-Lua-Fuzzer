local function create_churner()
local temp = {}
setmetatable(temp, { __mode = 'kv' })
return function()
for _ = 1, 1000 do
local churn = {}
temp[churn] = true
churn = nil
collectgarbage()
end
end
end