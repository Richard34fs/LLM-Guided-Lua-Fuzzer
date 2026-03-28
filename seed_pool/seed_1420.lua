local function ChurnMemory()
local temp_tables = {}
for i = 1, 1000 do
local tmp = {}
setmetatable(tmp, {__mode = "kv"})
temp_tables[i] = tmp
tmp.key = "value"
tmp = nil
end
collectgarbage()
end