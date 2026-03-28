for _ = 1, 100 do
local tempTable = {}
setmetatable(tempTable, {__mode = 'kv'})
for i = 1, 10000 do
tempTable[i] = i
end
tempTable = nil
collectgarbage()
end