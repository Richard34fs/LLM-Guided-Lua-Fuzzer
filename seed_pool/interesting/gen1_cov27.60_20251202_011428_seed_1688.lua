local function churnMemory()
    local i = 0
    while true do
        local tempTable = {}
        setmetatable(tempTable, {__mode = "k"})
        tempTable[1] = string.rep("x", 1024 * 1024)
        tempTable = nil
        collectgarbage()
        i = i + 1
    end
end