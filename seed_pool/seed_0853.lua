a = {}
b = "1"
c = 0
for i=1,15 do
a[b] = i
b = b + 1
c = c + 1
if c == 5 then
c = a[b-1]
end
end
print(a["1"])