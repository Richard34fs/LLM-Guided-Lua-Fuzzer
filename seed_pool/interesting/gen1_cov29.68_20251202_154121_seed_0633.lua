local t = {}
t[1] = "one"
t[2] = 2
t["three"] = 3
do
  for k, v in pairs(t) do
    print(k .. ": " .. tostring(v))
  end
end
print(1 + "1")
print("1" + 1)