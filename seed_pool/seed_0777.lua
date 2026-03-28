function memoryChurn()
local tempTable = {}
for i = 1, 1000 do
local childTable = { name = "child" .. i }
setmetatable(childTable, { __mode = 'k' })
tempTable[childTable] = true
childTable = nil
collectgarbage()
end
end