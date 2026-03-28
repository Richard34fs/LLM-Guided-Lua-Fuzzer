local t1 = {}
t1["123"] = "abc"
print(t1[123])
for i = 1, 10 do
  local t2 = {i = i * 2}
  print(t2.i)
end
print(t1["5"])