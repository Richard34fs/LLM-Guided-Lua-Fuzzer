function memoryChurn()
    local tempTable = {}
    for i = 1, 1000 do
        local childTable = { name = "child" .. i }
        setmetatable(childTable, { __mode = 'k' })
        tempTable[childTable] = true
        childTable = nil
        collectgarbage()
    end
end
function memoryChurn_mutated_1()
    local tempTable = {}
    for i = 1, 1000 do
        local childTable = { name = "child" .. i }
        setmetatable(childTable, { __mode = 'k' })
        tempTable[childTable] = true
        collectgarbage()
    end
end
function memoryChurn_mutated_2()
    local tempTable = {}
    for i = 1, 1000 do
        local childTable = { name = "child" .. i }
        setmetatable(childTable, { __mode = 'k' })
        collectgarbage()
    end
end
function memoryChurn_mutated_3()
    local tempTable = {}
    for i = 1, 1000 do
        local childTable = { name = "child" .. i }
        setmetatable(childTable, { __mode = 'k' })
        tempTable[childTable] = true
        collectgarbage()
    end
end
function memoryChurn_mutated_4()
    local tempTable = {}
    for i = 1, 1000 do
        local childTable = { name = "child" .. i }
        setmetatable(childTable, { __mode = 'k' })
        collectgarbage()
    end
end
function memoryChurn_mutated_5()
    local tempTable = {}
    for i = 1, 1000 do
        local childTable = { name = "child" .. i }
        setmetatable(childTable, { __mode = 'k' })
        tempTable[childTable] = true
        collectgarbage()
    end
end