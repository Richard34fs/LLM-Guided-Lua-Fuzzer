function churnMemory()
    do
        for i = 1, 1000 do
            local tempTable = {}
            setmetatable(tempTable, {__mode = "k"})
            tempTable[i] = i
            tempTable = nil
            collectgarbage()
        end
    end
    return
end