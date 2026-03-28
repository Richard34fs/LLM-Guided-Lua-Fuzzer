local t = {}
t.__index = t
setmetatable(t, t)
local function f()
return "Hello World!"
end
t.__call = f
print(t())