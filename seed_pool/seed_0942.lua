local function churnMemory()
for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[1] = i
tempTable[2] = "string"
tempTable[3] = {}
tempTable = nil
collectgarbage()
end
end
churnMemory()