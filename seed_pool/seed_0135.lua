for _ = 1, 100 do
local t = setmetatable({}, {__mode = 'k'})
t[1] = {}
t = nil
collectgarbage()
end