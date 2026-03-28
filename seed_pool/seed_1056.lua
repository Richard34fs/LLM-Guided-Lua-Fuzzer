for _ = 1, 100 do
local tempTable = {}
setmetatable(tempTable, {__mode = "k"})
for i = 1, 100000 do
tempTable[i] = {}
end
tempTable = nil
collectgarbage()
end