local t = {}
t["10"] = 10
print(t["10"])
t[1] = "one"
print(t[1])
for i in pairs(t) do
  t[i] = i * 2
end
for k, v in pairs(t) do
  print(k .. ": " .. tostring(v))
end