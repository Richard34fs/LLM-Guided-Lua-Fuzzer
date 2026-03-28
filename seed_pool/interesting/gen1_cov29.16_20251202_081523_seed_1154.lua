local t = {}
t["123"] = 10
t[123] = "abc"
for k, v in pairs(t) do
  pcall(function()
    error("deliberate error")
  end)

  print(k, v)
end