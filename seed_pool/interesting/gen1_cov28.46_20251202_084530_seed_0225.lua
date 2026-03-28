local t, c = {}, 10
d = 20
e = 30 f = 40
if true then g = 50 end h = 60
i = 70 + 80
t.__index = t
t.__newindex = t
t.__add = function(a, b) return a end
t.__call = function() return t end
setmetatable(t, t)
print(t + t())