a = {}
b = {}
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