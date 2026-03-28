local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
for i = 1, 1000 do
    local obj = {value = i}
    tempTable[obj] = true
    obj = nil
    collectgarbage()
end

return tempTable