local t = setmetatable({}, { __gc = function(self) print("Finalizer called!") end })
t["foo"] = 42
t[3.14] = "pi"
print(t["foo"])
print(t[3.14])
local x = "5"
local y = x + 1
for i = 1, 10 do
  x = x + 1
end
print(x)