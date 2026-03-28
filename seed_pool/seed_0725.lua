function memory_churn()
local temp = {}
setmetatable(temp, {__mode = 'kv'})
for i = 1, 10000 do
local churn = {key = "value"}
temp[churn] = true
churn = nil
end
collectgarbage()
end