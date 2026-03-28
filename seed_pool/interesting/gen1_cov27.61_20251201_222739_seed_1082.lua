local function churnMemory()
    local i = 1
    while i <= 10000 do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "kv"})
        tempTable[1] = i
        tempTable[2] = i * 2
        tempTable = nil
        collectgarbage()
        i = i + 1
    end
end