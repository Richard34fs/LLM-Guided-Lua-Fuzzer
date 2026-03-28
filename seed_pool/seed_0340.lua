for i = 1, 100 do
local t = {}
setmetatable(t, {__mode = 'kv'})
for j = 1, 1000 do
t[j] = j
end
t = nil
collectgarbage()
end