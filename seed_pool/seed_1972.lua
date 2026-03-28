local function create_churner()
local churner = {}
setmetatable(churner, {__mode = "k"})
return function()
local t = {}
setmetatable(t, {__mode = "v"})
churner[t] = true
t = nil
collectgarbage()
end
end