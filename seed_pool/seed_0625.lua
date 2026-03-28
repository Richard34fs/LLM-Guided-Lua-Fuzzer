local temp = {}
for i=1,1000 do
local t = {}
setmetatable(t, {__mode='k'})
temp[t] = i
t = nil
collectgarbage()
end
temp = nil
collectgarbage()