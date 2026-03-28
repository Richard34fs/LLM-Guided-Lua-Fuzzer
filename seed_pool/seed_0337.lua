for _ = 1, 1000 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = "kv"})
for i = 1, 1000 do
tmpTable[i] = {}
end
tmpTable = nil
collectgarbage()
end