local t = {a = 2}
t["b"] = "3"
for i = 1, 10 do
  t[i] = tostring(i)
end
print(t.a + t.b)
if t.a > 1 then
  print("a is greater than 1")
else
  print("a is not greater than 1")
end