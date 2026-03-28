function churn_memory()
local function new_table(weak)
return setmetatable({}, { __mode = (weak and 'kv' or nil) })
end
local tables = new_table()
while true do
local t = new_table(true)
for i = 1, 100000 do
t[i] = i
end
tables[t] = true
collectgarbage()
end
end