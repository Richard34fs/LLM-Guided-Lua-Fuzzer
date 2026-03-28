function churnMemory()
for i = 1, 10000 do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
tempTable[1] = {}
tempTable = nil
collectgarbage()
end
end