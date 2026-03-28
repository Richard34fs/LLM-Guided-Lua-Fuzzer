local function churnMemory()
    for i = 1, 100 do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "k"})
        for j = 1, 1000 do
            tempTable[j] = {}
        end
        tempTable = nil
        collectgarbage()
    end
end
return churnMemory