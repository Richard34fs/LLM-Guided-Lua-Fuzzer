local function churnMemory()
    local tempTable1 = {}
    setmetatable(tempTable1, {__mode = "k"})
    tempTable1[1] = {}
    tempTable1[1].value = 1
    for i = 2, 1000 do
        local tempTable2 = {}
        setmetatable(tempTable2, {__mode = "k"})
        tempTable2[i] = {}
        tempTable2[i].value = i
        tempTable2[i] = nil
        collectgarbage()
    end
    tempTable1[1] = nil
    collectgarbage()
end
churnMemory()