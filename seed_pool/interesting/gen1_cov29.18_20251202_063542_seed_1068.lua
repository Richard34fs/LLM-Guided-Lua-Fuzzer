function outer()
  local t = {}
  t["hello"] = 10
  print(t["hello"])

  s = "5"
  print(s + 1)

  for i = 1, 10 do
    local a = 5
    a = a + 1
    print(a)
  end

  return function()
    local t = {}
    t["hello"] = 10
    print(t["hello"])

    s = "5"
    print(s + 1)

    for i = 1, 10 do
      local a = 5
      a = a + 1
      print(a)
    end
  end
end

outer()()