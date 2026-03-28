local t = {}
do
  t["a"] = "b"
  print(type(t))
  do
    print(type(t["a"]))
    for i=1,5 do
      do
        t[i] = i * 2
        print(type(t[i]))
      end
    end
  end
end
print(type(t))