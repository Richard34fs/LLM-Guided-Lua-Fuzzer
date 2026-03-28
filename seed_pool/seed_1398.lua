local function churnMemory()
for _ = 1, 1000 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = "k"})
tmpTable[1] = {}
tmpTable = nil
collectgarbage()
end
end