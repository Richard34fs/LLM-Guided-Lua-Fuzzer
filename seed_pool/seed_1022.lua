local t = {}
t[1] = "one"
t["one"] = 1
for i = 1, 10 do
if i % 2 == 0 then
t[i] = i .. ""
else
t[i] = i + 0
end
end
print(t[1], t["one"], t[2], t[3], t[4], t[5], t[6], t[7], t[8], t[9], t[10])