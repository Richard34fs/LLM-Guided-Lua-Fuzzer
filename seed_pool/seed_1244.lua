for _ = 1, 9999 do
local t = {}
setmetatable(t, {__mode = "k"})
for i = 1, 9999 do
t[i] = i
end
t = nil
collectgarbage()
end