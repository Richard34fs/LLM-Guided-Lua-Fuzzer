function ChurnMemory()
local t = {}
setmetatable(t, {__mode = "k"})
while true do
for i=1, 100000 do
local tmp = {}
tmp[1] = i
t[tmp] = true
tmp = nil
end
collectgarbage()
end
end