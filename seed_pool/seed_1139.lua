local t = {}
t.__index = t
setmetatable(t, t)
local function f()
return "hello world"
end
t.__call = f
print(t())