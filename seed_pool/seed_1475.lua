local t = {}
t[2 + "3"] = 5
for i = 1, 10 do
if i % 2 == 0 then
t[i] = true
else
t[i] = i
end
end
print(t["5"])