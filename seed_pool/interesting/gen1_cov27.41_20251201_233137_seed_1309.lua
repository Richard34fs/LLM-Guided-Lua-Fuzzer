local function churnMemory()
for i = 1, 1000 do
local tempTable = {}
setmetatable(tempTable, {__mode = 'k'})
tempTable[{}] = {}
collectgarbage()
end
end
local a, b, c = 1, 2, 3
a, b = 4, 5
c = 6
if true then
local d = 7
end
d = 8
for i = 1, 10 do
local e = 9
end
e = 10