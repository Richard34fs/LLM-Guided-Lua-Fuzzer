for i = 1, 10 do
local t = setmetatable({}, {__mode = 'kv'})
for j = 1, 100000 do
t[j] = j
end
t = nil
collectgarbage()
end