a = {}
for i=1,10 do
a[i] = i*2
end
b = {1,2,3}
c = a[1] + b[2]
d = c .. ""
e = d + 0
f = e == true
g = not f
print(g)