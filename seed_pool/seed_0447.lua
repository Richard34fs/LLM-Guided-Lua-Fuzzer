local function ChurnMemory()
for _ = 1, 100 do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
tempTable[1] = {}
tempTable[1][2] = tempTable
tempTable = nil
collectgarbage()
end
end
ChurnMemory()