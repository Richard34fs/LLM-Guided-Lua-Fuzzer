function memory_churn(n)
local t = {}
setmetatable(t, {__mode = 'k'})
for i = 1, n do
local temp = {}
t[temp] = true
temp = nil
collectgarbage()
end
end