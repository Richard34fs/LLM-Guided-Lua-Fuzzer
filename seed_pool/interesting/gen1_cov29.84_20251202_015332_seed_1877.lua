local t = {}
t["10"] = "ten"
t[10] = 10
print(t["10"])
print(t[10])
for i = 1, #t do
  print(t[i])
end
pcall(function()
  error("deliberate error")   -- mutated code
end)
pcall(function()
  assert(false, "deliberate assertion failure")   -- mutated code
end)
pcall(function()
  local value = t["invalid_key"]  -- mutated code
  print(value)
end)