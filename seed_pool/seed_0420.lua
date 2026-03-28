for i = 1, 1000 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = "kv"})
for j = 1, 1000 do
tmpTable[j] = j
end
tmpTable = nil
collectgarbage()
end