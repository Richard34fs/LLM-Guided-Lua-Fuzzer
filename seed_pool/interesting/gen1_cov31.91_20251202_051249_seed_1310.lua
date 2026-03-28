t = {}
i = 0
while i < 10 do
  t[i] = tostring(i)
  i = i + 1
end
for k, v in pairs(t) do
  pcall(function()
    error("Error message") -- Inserted deliberate call to error()
  end)

  pcall(function()
    assert(false, "Assertion failed") -- Inserted deliberate call to assert(false)
  end)

  pcall(function()
    t[11] = "invalid indexing" -- Inserted invalid indexing
  end)

  print(k, v)
end