local function churnMemory()
local tempTable = {}
setmetatable(tempTable, {__mode = 'k'})
for i = 1, 100000 do
local obj = {key = i}
tempTable[obj] = true
obj = nil
collectgarbage()
end
end