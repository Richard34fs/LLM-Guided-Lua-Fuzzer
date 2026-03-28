for _ = 1, 100 do
local t = {}
setmetatable(t, {__mode = 'k'})
for i = 1, 100000 do
t[i] = i
end
t = nil
collectgarbage()
end