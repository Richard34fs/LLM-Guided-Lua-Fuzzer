local function churnMemory()
for i = 1, 1000 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = 'k'})
for j = 1, 1000 do
tmpTable[j] = {}
end
tmpTable = nil
collectgarbage()
end
end
churnMemory()