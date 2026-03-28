local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode = "kv"})
    for i = 1, 1000 do
        local obj = {id = i}
        tempTable[obj] = true
        obj = nil
    end
    collectgarbage()
end
for i = 1, 1000 do
    churnMemory()
end

local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode = "kv"})
    for i = 1, 1000 do
        local obj = {id = i}
        tempTable[obj] = true
        obj = nil
    end
    collectgarbage()
end
for i = 1, 1000 do
    churnMemory()
end