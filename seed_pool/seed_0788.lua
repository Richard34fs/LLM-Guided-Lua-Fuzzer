local function create_churner(count)
local tables = {}
for i = 1, count do
local t = {}
setmetatable(t, {__mode = "k"})
tables[t] = true
t = nil
end
tables = nil
for i = 1, count do
collectgarbage()
end
end