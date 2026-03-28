for i = 1, 1000 do
local tmpTable = setmetatable({}, {__mode = "kv"})
tmpTable[1] = string.rep("x", 1024 * 1024)
tmpTable = nil
collectgarbage()
end