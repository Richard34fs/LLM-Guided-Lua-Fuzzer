local t = {}
t.__index = t
setmetatable(t, t)
t.__newindex = function()
    print("No, I won't let you do that!")
end
t.__add = function(a, b)
    return a[1] & b[1]   -- Replace '+' with '&'
end
t.__call = function(...)
    print(...)
end
for k, v in pairs(t) do
  print(k, v)
end