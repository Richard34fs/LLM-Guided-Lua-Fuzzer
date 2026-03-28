local function churnMemory()
local count = 10000
for i=1,count do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[i] = i
tempTable = nil
collectgarbage()
end
end
churnMemory()