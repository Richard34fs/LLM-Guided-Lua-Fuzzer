local function churnMemory()
for _ = 1, 100 do
local tmpTable = {}
setmetatable(tmpTable, {__mode = "k"})
tmpTable = nil
collectgarbage()
end
end