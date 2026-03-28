do
  local a = {}

  do
    a["foo"] = "bar"

    do
      a[2 + 3] = 10
      for i = 1, 10 do
        a[i] = i
      end
    end
  end

  print(a["foo"])
  print(a[5])
  print(a[1])
end