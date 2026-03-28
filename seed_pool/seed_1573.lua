local t = {}
t["foo"] = "bar"
t[1] = 2
for i = 1, 10 do
if i % 2 == 0 then
t[i] = i + 1
else
t[i] = tostring(i + 1)
end
end
print(t["foo"] .. t[1] .. t[2] .. t[3])