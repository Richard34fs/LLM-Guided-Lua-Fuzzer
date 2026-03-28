local function churn_memory()
local tmp = {}
setmetatable(tmp, {__mode = "kv"})
for i = 1, 10000 do
local t = {}
tmp[t] = true
t = nil
collectgarbage()
end
end
churn_memory()