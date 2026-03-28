for _ = 1, 1000 do
local t = setmetatable({}, {__mode = "k"})
t[1] = t
t = nil
collectgarbage()
end