local table_new = {}
setmetatable(table_new, {__mode='kv'})
for i=1,100 do
local t = {}
for j=1,100 do
t[j] = math.random()
end
table_new[i] = t
t = nil
collectgarbage()
end