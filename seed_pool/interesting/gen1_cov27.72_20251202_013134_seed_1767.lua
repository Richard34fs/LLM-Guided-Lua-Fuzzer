local t = {}
t[123] = "abc"
print(t["123"])
i = 1
while i <= 10 do
  t[i] = i * 2
  i = i + 1
end
print(t[5])