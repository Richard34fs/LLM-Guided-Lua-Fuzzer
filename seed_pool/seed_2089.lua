local t = {a=0}
for i=1,10 do
if i%2 == 0 then
t["b"] = "str"
else
t[1] = 10
end
print(t[i%2==0 and "b" or 1])
end