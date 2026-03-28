for _ = 1, 100 do
local t = {}
setmetatable(t, {__mode = 'kv'})
t[1] = 2
t[3] = 4
t = nil
collectgarbage()
end