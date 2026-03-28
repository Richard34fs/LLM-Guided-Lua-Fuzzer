local function churnMemory()
for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = 'k'})
tempTable[{}] = {}
collectgarbage()
end
end