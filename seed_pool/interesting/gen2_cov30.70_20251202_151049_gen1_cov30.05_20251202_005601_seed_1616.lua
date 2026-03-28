local t = {}
setmetatable(t, {
  __gc = function()
    print("Finalizing table...")
  end,
  __add = function(a, b)
    return a.x + b.x
  end,
  x = 10
})
for i=1,10 do
  t[i] = i*2
end
t.y = 20
for k,v in pairs(t) do
  print(k .. " -> " .. v)
end