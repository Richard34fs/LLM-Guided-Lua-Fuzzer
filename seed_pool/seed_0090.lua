a = {}
b = "0"
c = 0
for i=1,15 do
a[b] = i
b = tostring(tonumber(b) + 1)
c = c + 1
end
print(a["1"])