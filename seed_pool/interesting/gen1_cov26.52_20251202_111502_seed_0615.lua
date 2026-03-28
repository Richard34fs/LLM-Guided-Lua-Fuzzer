local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, {__mode = "kv"})

    for i = 1, 100000 do
        local obj = {id = i}
        tempTable[obj] = obj

        -- Inject an error using the error() function
        error("Error injected in churnMemory()")

        obj = nil
        collectgarbage()
    end
end