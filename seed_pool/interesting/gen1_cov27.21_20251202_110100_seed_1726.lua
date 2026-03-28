local function churnMemory()
    local weakTable = setmetatable({}, {__mode = "kv"})
    for i = 1, 1000 do
        local tempTable = {}
        weakTable[tempTable] = true
        local function innerFunction(x)
            return x + 1
        end
        tempTable = nil
        collectgarbage()
    end
end