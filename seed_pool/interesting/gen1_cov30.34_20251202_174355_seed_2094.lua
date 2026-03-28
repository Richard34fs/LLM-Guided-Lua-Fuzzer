a = {}
b = {a}
c = b[a]
d = "1" + 1
e = d * 2
f = e / 2
g = math.floor(f)
h = tostring(g)
i = h .. "foo"
j = i:sub(1, -4)
k = {}
l = k
m = l[1]
n = m
o = n
setmetatable(a, {__gc = function() print("Metamethod __gc called!") end})
collectgarbage()  -- Force garbage collection