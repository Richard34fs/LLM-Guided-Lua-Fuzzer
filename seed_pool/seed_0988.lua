function memory_churn()
local temp_tables = {}
for i=1,1000 do
local t = {}
setmetatable(t, {__mode='kv'})
temp_tables[i] = t
end
for _, t in pairs(temp_tables) do
t = nil
end
for i=1,1000 do
collectgarbage()
end
end