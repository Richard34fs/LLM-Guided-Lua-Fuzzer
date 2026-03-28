local t = {}
t[0] = "zero"
t["one"] = 1
for i=1, 10 do
if i % 2 == 0 then
t[i] = i
else
t[i] = tostring(i)
end
print(t[i])
end
print(t[0], t["one"])