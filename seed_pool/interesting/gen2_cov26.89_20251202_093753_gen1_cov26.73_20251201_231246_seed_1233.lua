local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, { __mode = 'kv' })
    
    for i = 1, 10000 do
        local object = { id = i }
        tempTable[object] = true
        object = nil
    end
    
    for _ in pairs(tempTable) do
        collectgarbage()
    end
    
    return tempTable
end