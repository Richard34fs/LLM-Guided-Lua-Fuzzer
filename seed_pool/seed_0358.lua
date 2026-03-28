function ChurnMemory()
for _ = 1, 1000 do
local temp_table = {}
setmetatable(temp_table, {__mode = "k"})
temp_table[1] = {}
temp_table = nil
collectgarbage()
end
end