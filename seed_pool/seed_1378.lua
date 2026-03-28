local function churnMemory()
for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = 'k'})
tempTable[i] = i * 2
tempTable[i] = nil
collectgarbage()
end
end