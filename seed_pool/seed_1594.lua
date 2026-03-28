function churn_memory()
local tmp = {}
setmetatable(tmp, { __mode = 'k' })
while true do
for i = 1, 1000 do
local t = {}
t[1] = i
tmp[t] = true
end
collectgarbage()
end
end