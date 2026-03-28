local function create_weak_table(mode)
local t = {}
setmetatable(t, {__mode = mode})
return t
end
local function churn_memory()
for i = 1, 1000 do
local tmp_table = create_weak_table('kv')
tmp_table[i] = {}
tmp_table = nil
collectgarbage()
end
end