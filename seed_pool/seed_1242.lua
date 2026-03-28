local function create_weak_table()
local t = {}
setmetatable(t, {__mode = "kv"})
return t
end
local function churn_memory()
for i = 1, 1000 do
local temp_table = create_weak_table()
for j = 1, 1000 do
temp_table[j] = {}
end
temp_table = nil
collectgarbage()
end
end