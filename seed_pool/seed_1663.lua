for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[i] = i
tempTable[i] = nil
collectgarbage()
end