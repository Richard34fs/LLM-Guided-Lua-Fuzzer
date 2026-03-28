for i = 1, 10 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = 'k'})
tmpTable[i] = i
tmpTable = nil
collectgarbage()
end