local function create_churner(size)
local key = {}
local value = {}
for i = 1, size do
key[i] = {}
value[i] = {}
end
setmetatable(key, {__mode = "k"})
setmetatable(value, {__mode = "v"})
key = nil
value = nil
collectgarbage()
end