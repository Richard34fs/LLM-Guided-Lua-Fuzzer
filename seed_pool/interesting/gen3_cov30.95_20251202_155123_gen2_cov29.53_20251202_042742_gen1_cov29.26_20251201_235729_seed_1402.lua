local a, b = {}, {}
setmetatable(a, {
    __index = function() return 123 end
})
for k, v in pairs(a) do
  a[k] = v + 1
end
for i=1,10 do
  b = "456"
end
print(a[b])
table.insert = function(t, value)
  -- local insert = table.insert
  return print("INSERTING INTO TABLE")
end
ipairs = function(t)
  -- local ipairs = ipairs
  return print("ITERATING OVER TABLE")
end
print = function(...)
  -- local print = print
  return io.write(...)
end
local a, b = {}, {}
setmetatable(a, {
    __index = function() return 123 end
})
for k, v in pairs(a) do
  a[k] = v + 1
end
for i=1,10 do
  b = "456"
end
print(a[b])