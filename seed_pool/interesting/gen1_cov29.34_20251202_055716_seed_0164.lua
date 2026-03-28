local function myFunction()
  local t = {}
  t["1"] = 2
  t[1] = "3"
  for k, v in pairs(t) do
    print(k + v)
  end
end
myFunction()