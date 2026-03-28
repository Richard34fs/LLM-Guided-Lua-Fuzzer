local function churnMemory()
local tableCount = 1000
local keyCount = 100
for i = 1, tableCount do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
for j = 1, keyCount do
tempTable[{} ] = true
end
tempTable = nil
end
collectgarbage()
end