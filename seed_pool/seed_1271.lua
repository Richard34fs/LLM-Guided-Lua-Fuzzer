function ChurnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = 'kv'})
for i = 1, 1000 do
tempTable[i] = {}
tempTable[i].key = i
tempTable[i] = nil
collectgarbage()
end
end