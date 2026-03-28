local function churnMemory()
for i = 1, 100 do
local tempTable = {}
setmetatable(tempTable, {__mode = "kv"})
tempTable[1] = i
tempTable[2] = "some random string"
tempTable = nil
collectgarbage()
end
end