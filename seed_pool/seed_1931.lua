local t = {a = "123", b = 456}
for i = 1, 10 do
t[i] = t.a + t.b
end
t.a, t.b = t.b, t.a
print(t.a, t.b)