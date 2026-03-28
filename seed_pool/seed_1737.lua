function ChurnMemory()
for _ = 1, 100 do
local tempTable = {}
setmetatable(tempTable, { __mode = "k" })
for i = 1, 1000 do
tempTable[i] = {}
end
tempTable = nil
collectgarbage()
end
end