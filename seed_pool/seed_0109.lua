local function create_churner()
local churner = {}
setmetatable(churner, {__mode = "k"})
return function()
local t = {}
churner[t] = true
t = nil
collectgarbage()
end
end