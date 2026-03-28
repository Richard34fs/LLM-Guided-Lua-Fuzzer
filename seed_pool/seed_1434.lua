local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
for i = 1, 1000 do
local obj = {value = i}
temp_table[obj] = true
obj = nil
collectgarbage()
end