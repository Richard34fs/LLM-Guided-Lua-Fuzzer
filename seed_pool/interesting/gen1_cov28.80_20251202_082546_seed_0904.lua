local t = {}
t["10"] = 10
print(type(t["10"]))
t[1] = "one"
print(type(t[1]))
for i = 1, #t do
    print(type(t[i]))
end
setmetatable(t, { __index = function(table, key)
  return "fallback value"
end })
print(t[2])  -- prints "fallback value"