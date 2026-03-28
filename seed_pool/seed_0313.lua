local function create_churner()
local tables = {}
return function(n)
for i = 1, n do
local t = {}
setmetatable(t, {__mode = "k"})
tables[t] = true
collectgarbage()
end
end
end
local churner = create_churner()
churner(100)