local t = {}
t["foo"] = 42
t["bar"] = "hello"
for i=1, 10 do
if i % 2 == 0 then
t["foo"] = t["foo"] + 1
else
t["foo"] = t["foo"] .. ""
end
end
local metatable = {}
function metatable.__gc(self)
  print("Finalizing object")
end
setmetatable(t, metatable)
print(t["foo"])