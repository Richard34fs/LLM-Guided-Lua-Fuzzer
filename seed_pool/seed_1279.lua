function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
for i = 1, 1000 do
local obj = {key = "value"}
tempTable[obj] = true
obj = nil
collectgarbage()
end
end