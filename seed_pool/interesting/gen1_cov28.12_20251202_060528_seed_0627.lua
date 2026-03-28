a = {}
b = "42"
c = 0
d = false
for i=1,10 do
    a[b] = i
    b = b + 1
    c = c + 1
    d = not d
end
print(a["42"])
print(b)
print(c)
print(d)