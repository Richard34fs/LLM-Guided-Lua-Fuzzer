t = {a = 2}
x = t.a
y = t["a"]
t[x] = 3
z = t[y]
print(z)
for i=1,5 do
x = x + 1
y = y + 1
t[x] = t[y]
end
print(t[5])