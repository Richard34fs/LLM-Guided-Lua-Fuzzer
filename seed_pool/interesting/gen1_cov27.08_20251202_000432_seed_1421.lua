function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode = "kv"})
    while true do
        for i = 1, 100000 do
            tempTable[i] = {}
        end
        collectgarbage()
    end
end