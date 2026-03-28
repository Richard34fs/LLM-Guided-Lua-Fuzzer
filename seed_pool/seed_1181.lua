local function churnMemory()
local tableCount = 10000
for i = 1, tableCount do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
for j = 1, 1000 do
tempTable[{}] = j
end
tempTable = nil
collectgarbage()
end
end