local function churnMemory()
    repeat
        local tempTable = {}
        setmetatable(tempTable, {__mode = "k"})
        for j = 1, 1000 do
            tempTable[j] = {}
        end
        tempTable = nil
        collectgarbage()
    until false
end
return churnMemory