local t = {}
setmetatable(t, {
  __gc = function()
    print("Finalizing table...")
  end
})
for i=1,10 do
  t[i] = i*2
end
for k,v in pairs(t) do
  print(k .. " -> " .. v)
end