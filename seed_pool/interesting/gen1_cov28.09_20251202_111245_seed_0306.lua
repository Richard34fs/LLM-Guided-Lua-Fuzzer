local function churnMemory()
    local tempTable = {}
    setmetatable(tempTable, { __mode = "k" })
    for i = 1, 1000 do
        local chunk = loadstring("return "..i)
        if not chunk then
            return nil
        end
        tempTable[chunk()] = { i }
    end
    collectgarbage()
end