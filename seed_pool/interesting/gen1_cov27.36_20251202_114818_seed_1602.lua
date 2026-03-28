local function churnMemory()
    local count = 10000
    local i = 1
    while i <= count do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "kva"})
        local j = 1
        while j <= count do
            tempTable[{}] = {}
            j = j + 1
        end
        tempTable = nil
        collectgarbage()
        i = i + 1
    end
end