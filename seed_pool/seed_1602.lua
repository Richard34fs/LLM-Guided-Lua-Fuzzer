local function churnMemory()
local count = 10000
for i = 1, count do
local tempTable = {}
setmetatable(tempTable, {__mode = "kva"})
for j = 1, count do
tempTable[{}] = {}
end
tempTable = nil
collectgarbage()
end
end