for i = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = 'kv'})
for j = 1, 1000 do
temp_table[j] = j
end
temp_table = nil
collectgarbage()
end