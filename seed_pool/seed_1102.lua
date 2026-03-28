local function churnMemory()
for _ = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = 'k'})
tempTable[{}] = {}
collectgarbage()
end
end
churnMemory()