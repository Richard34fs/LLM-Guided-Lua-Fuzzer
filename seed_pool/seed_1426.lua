local function churnMemory()
while true do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
for i = 1, 100000 do
tempTable[i] = i
end
tempTable = nil
collectgarbage()
end
end