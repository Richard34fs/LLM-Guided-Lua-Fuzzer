function churn_memory()
local t = {}
setmetatable(t, {__mode = "kv"})
while true do
local a = {}
t[a] = true
a = nil
collectgarbage()
end
end