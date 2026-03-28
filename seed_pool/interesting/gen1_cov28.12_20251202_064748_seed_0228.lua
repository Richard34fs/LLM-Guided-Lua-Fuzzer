local t = {}
t[{}] = 1
t[2] = {}
t["3"] = 4
i = 1
while i <= 10 do
  t[i] = i * 2
  i = i + 1
end
print(t[{}])
print(t[2])
print(t["3"])