for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, { __mode = 'k' })
for j = 1, 1000 do
local obj = { id = j }
tempTable[obj] = obj
end
tempTable = nil
obj = nil
collectgarbage()
end