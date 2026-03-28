local function churn_memory()
local t = {}
setmetatable(t, {__mode = 'kv'})
while true do
local temp = {}
for i = 1, 100000 do
temp[i] = i
end
t[temp] = true
temp = nil
collectgarbage()
end
end