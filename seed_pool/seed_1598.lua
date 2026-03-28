local t = {a = 1}
for i = 1, 10 do
if i % 2 == 1 then
t[i] = i + 1
else
t["key" .. i] = i - 1
end
end
print(t.a, t[1], t["key2"], t[3], t["key4"])