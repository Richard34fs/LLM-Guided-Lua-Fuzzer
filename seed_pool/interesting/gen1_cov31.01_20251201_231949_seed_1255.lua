local t = {}
setmetatable(t, {__gc = function(self) print("Table gc") end})
t["foo"] = "bar"
print(t["foo"])
local a = 5
a = a + "6"
print(a)
for i = 1, 3 do
  if type(i) == "number" then
    i = tostring(i)
  else
    i = tonumber(i)
  end
  print(i)
end
collectgarbage()