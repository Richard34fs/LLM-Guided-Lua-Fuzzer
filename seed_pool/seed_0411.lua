local t = {a = "1", b = 2}
for i=1,10 do
t[i] = t.a + t.b
t[i] = t[i] + 1
t[i] = tonumber(t[i])
end
print(t[10])