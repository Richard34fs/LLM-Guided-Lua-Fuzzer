for _ = 1, 1e6 do
local t = setmetatable({}, {__mode = 'k'})
t[1] = t
t = nil
collectgarbage()
end