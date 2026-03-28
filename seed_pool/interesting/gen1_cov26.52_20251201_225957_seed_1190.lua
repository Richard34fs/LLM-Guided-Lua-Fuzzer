local function ChurnMemory()
    for _ = 1, 100 do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "kv"})
        tempTable[1] = "Churning memory..."
        tempTable[2] = {}
        tempTable[3] = function() return "test" end
        tempTable = nil
        collectgarbage()
    end
end