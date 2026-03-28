function churn_memory()
for i = 1, 10000 do
local t = {}
setmetatable(t, {__mode = "kv"})
t = nil
collectgarbage()
end
end