local t = {}
setmetatable(t, {__index = function() return 42 end})
t["foo"] = 42
t[4] = "bar"
for i = 1, 3 do
  t[i] = t[i + 1]
end
print(t["foo"])