a = {1,2}
b = "3"
c = 4
d = true
e = 'foo'
f = {}
for i=1,5 do
a, b, c, d, e, f = b, c, d, e, f, a
end
print(type(a))
print(type(b))
print(type(c))
print(type(d))
print(type(e))
print(type(f))