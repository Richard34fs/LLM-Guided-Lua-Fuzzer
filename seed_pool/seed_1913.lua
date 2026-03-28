function churn_memory()
local function new_table(weak)
return setmetatable({}, {__mode = (weak and 'kv') or nil})
end
for _ = 1, 100 do
local t = new_table(true)
for i = 1, 1000 do
t[i] = {}
end
t = new_table()
collectgarbage()
end
end