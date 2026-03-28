for _ = 1, 100 do
local t = {}
setmetatable(t, {__mode = "kv"})
for i = 1, 1000000 do
t[i] = i
end
t = nil
collectgarbage()
end