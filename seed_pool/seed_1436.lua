::start::
a = 10
b = a + 1
c = b - 2
if c < 0 then
goto start
end
d = c * 3
e = d / 4
f = e ^ 2
g = f % 5
h = g .. "foo"
i = h .. "bar"
j = i .. "baz"
print(j)