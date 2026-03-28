local function ChurnMemory()
local tableCount = 20000
local keyCount = 100
for i = 1, tableCount do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
for j = 1, keyCount do
tempTable[j] = {}
end
end
collectgarbage()
end
ChurnMemory()