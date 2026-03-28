a = "1"
b = 1
c = {}
d = true
e = {a, b, c, d}
f = e[1] + e[2]
g = #e
h = e[g]
i = h and e[3] or e[4]
j = i["foo"]
k = j == nil
l = not k
m = l and "bar" or "baz"