local temp_tables = {}
for i=1,100 do
local t = {}
setmetatable(t, {__mode = "kv"})
temp_tables[i] = t
for j=1,10000 do
t[j] = j
end
t = nil
collectgarbage()
end