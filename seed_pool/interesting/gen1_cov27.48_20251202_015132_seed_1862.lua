function memoryChurn()
    local tempTable = {}
    setmetatable(tempTable, {__mode = "k"})

    while true do
        for i = 1, 100000 do
            tempTable[i] = {}
        end
        collectgarbage()

        pcall(function()
            error("deliberate error")
        end)

        pcall(function()
            assert(false, "deliberate assertion failure")
        end)

        pcall(function()
            tempTable[100001] = "out of bounds indexing"
        end)
    end
end