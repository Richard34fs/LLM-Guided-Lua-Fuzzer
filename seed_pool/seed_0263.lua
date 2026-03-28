local function churnMemory()
for _ = 1, 100 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = "kv"})
tmpTable[1] = "foo"
tmpTable[2] = "bar"
tmpTable[3] = "baz"
tmpTable[1] = nil
tmpTable[2] = nil
tmpTable[3] = nil
collectgarbage()
end
end