do
    local t = {}
    t["foo"] = "bar"
    print(t["foo"])
    t[1] = 2
    print(t[1])
    for i = 1, #t do
      print(type(i))
      print(type(t[i]))
    end
  end