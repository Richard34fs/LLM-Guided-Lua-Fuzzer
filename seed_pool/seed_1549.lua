local function churnMemory()
local tmp = {}
setmetatable(tmp, {__mode = 'k'})
for i = 1, 10000 do
local t = {}
for j = 1, 1000 do
t[j] = string.rep('x', 100)
end
tmp[i] = t
end
tmp = nil
collectgarbage()
end