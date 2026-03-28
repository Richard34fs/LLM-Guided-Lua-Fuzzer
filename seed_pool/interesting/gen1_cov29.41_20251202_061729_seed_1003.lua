local t = setmetatable({}, {__gc = function() print("GC") end})
t["a"]  = 1
t[2]    = "b"
print(t["a"] + #t[2])
local x = 10
for i=1,x do
  x = true
  print(type(x))
end
print(type(x))