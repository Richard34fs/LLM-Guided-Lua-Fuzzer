function memoryChurn()
    local tempTable = {}
    for i = 1, 100000 do
        tempTable[i] = { __mode = 'v' }
        tempTable[i][1] = i
    end
    collectgarbage()
end

function memoryChurnMutated()
    local tempTable = {}
    collectgarbage()
    for i = 1, 100000 do
        tempTable[i] = { __mode = 'v' }
        tempTable[i][1] = i
    end
end