function churn_memory()
for _ = 1, 100 do
local t = {}
setmetatable(t, {__mode = "kv"})
t[1] = 1
t = nil
collectgarbage()
end
end