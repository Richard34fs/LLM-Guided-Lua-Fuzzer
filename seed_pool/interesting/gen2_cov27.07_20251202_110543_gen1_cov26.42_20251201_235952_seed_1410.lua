local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode = 'kv'})
    for i = 1, 10000 do
        local obj = {id = i}
        tempTable[obj] = true
        obj = nil
    end
    collectgarbage()
end
local function churnMemory()
    for i = 1, 10000 do
        local obj = {id = i}
        tempTable[obj] = true
        obj = nil
    end
    collectgarbage()
end
local tempTable = {}
setmetatable(tempTable, {__mode = 'kv'})