local function churnMemory()
for _ = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[1] = {}
tempTable = nil
collectgarbage()
end
end