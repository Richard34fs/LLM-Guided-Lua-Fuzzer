function churnMemory()
    local function createClosure(x)
        return function()
            return x
        end
    end

    for i = 1, 10000 do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "k"})
        tempTable[1] = createClosure({})
        tempTable = nil
        collectgarbage()
    end
end