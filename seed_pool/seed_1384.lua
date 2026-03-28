local function churnMemory()
local tableCount = 20000
for i = 1, tableCount do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
tempTable[i] = i
tempTable = nil
collectgarbage()
end
end
churnMemory()