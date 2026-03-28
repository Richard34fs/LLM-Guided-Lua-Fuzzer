local function churnMemory()
    local i = 1
    while i <= 1000 do
        local tempTable = {}
        setmetatable(tempTable, {__mode = 'kv'})
        for j = 1, 1000 do
            tempTable[j] = j
        end
        tempTable = nil
        collectgarbage()
        i = i + 1
    end
end