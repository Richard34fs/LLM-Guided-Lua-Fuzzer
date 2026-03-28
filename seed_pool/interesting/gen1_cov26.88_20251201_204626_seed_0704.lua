local function create_churner(...)
local tables = {}
for i = 1, ... do
local t = setmetatable({}, {__mode = "kv"})
t[1] = i
tables[i] = t
end
for i = 1, ... do
tables[i] = nil
end
tables = nil
collectgarbage()
return ...
end