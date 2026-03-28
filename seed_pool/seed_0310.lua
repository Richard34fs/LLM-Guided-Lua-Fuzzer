function churn_memory()
local tables = {}
for i = 1, 1000 do
local t = {}
setmetatable(t, {__mode = "kv"})
tables[i] = t
end
for i = 1, 1000 do
tables[i][1] = string.rep("a", 1024 * 1024)
end
for i = 1, 1000 do
tables[i] = nil
collectgarbage()
end
end