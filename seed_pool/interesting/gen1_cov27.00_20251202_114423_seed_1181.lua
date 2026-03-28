function churnMemory()
    local tableCount = 10000
    for i = 1, tableCount do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "k"})
        for j = 1, 1000 do
            tempTable[{}] = j
        end
        for k = 1, 100 do -- Add nested tables
            local innerTable = {}
            tempTable[innerTable] = k
        end
        tempTable.metatable = setmetatable({}, {__index = function() return 42 end}) -- Add metatables
        tempTable["function"] = function() return "test" end -- Add functions as values
        tempTable = nil
        collectgarbage()
    end
end