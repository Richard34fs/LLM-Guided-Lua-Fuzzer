for i = 1, 1000 do
local t = setmetatable({}, {__mode = "k"})
for j = 1, 1000 do
t[j] = {}
end
t = nil
collectgarbage()
end