function churn_memory()
local tmp = {}
setmetatable(tmp, {__mode = 'k'})
for i = 1, 100000 do
local t = {}
tmp[t] = true
t = nil
collectgarbage()
end
end