local t = {a = 2}
t["b"] = "3"
print(t.a + t.b)
for i = 1, 10 do
t[i] = tostring(i)
end
print(t[2])