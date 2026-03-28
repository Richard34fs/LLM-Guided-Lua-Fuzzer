local temp = {}
for i = 1, 1000 do
local t = {}
setmetatable(t, {__mode = 'kv'})
temp[i] = t
for j = 1, 1000 do
t[j] = {}
end
t = nil
end
for i = 1, 1000 do
collectgarbage()
end