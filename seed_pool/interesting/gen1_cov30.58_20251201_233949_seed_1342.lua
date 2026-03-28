local t = {}
t["10"] = 20
print(t[10])
for i = 1, 10 do
  t[i] = i * 2
end
pcall(function()
  print(t["invalid key"])
end)
for k, v in pairs(t) do
  print(k .. " " .. tostring(v))
end