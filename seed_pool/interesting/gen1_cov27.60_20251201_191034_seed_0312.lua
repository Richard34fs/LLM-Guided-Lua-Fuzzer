local function churnMemory()
    local i = 1
    repeat
        local tempTable = {}
        setmetatable(tempTable, {__mode = "k"})
        tempTable[i] = i * 2
        tempTable = nil
        collectgarbage()
        i = i + 1
    until i > 1000
end