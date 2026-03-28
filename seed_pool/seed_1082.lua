local function churnMemory()
for i = 1, 10000 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[1] = i
tempTable[2] = i * 2
tempTable = nil
collectgarbage()
end
end