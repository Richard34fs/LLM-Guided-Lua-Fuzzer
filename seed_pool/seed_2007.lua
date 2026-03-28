function churn_memory()
for _ = 1, 100 do
local tmp = {}
setmetatable(tmp, {__mode = "k"})
tmp[1] = {}
tmp = nil
collectgarbage()
end
end