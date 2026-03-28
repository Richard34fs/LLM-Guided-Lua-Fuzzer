local t = {a=1}
t[t] = 2
print(t[t])
local s = "1"
s = s + 1
print(s)
for i in ipairs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}) do
  i = tostring(i)
  print(i)
end