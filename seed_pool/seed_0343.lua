local t = {a = "1", b = 2}
for i=1,10 do
if i % 2 == 0 then
t[i] = i
else
t[tostring(i)] = i
end
end
print(t["a"] + t[2])