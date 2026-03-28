local function churn_memory()
local temp_tables = {}
for i = 1, 100 do
local t = setmetatable({}, {__mode = "kv"})
for j = 1, 1000 do
t[j] = j
end
t = nil
collectgarbage()
temp_tables[i] = t
end
return temp_tables
end