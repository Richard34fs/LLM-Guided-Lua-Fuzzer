local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
for i = 1, 1000 do
    local data = {key = ("value" .. i)}
    tempTable[data] = true
    data = nil
    collectgarbage()
end