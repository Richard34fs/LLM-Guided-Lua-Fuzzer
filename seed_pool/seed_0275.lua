for i = 1, 100 do
local t = {}
setmetatable(t, {__mode = "k"})
for j = 1, 1000 do
local v = {}
t[v] = true
v = nil
end
collectgarbage()
end