function create_memory_churn()
local temp_tables = {}
for i = 1, 100 do
local tmp = {a = {}, b = {}}
setmetatable(tmp, {__mode = "k"})
temp_tables[i] = tmp
tmp.a = nil
tmp.b = nil
end
for i = 1, 100 do
collectgarbage()
end
end