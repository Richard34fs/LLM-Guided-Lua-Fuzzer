local function churnMemory()
for i = 1, 100 do
    local tempTable = {}
    setmetatable(tempTable, {__mode = 'kv'})
    tempTable[1] = i
    tempTable[2] = "value"
    tempTable = nil
    collectgarbage()
end
end
local function churnMemory()
do
for i = 1, 100 do
    local tempTable = {}
    setmetatable(tempTable, {__mode = 'kv'})
    tempTable[1] = i
    tempTable[2] = "value"
    tempTable = nil
    collectgarbage()
end
end
end