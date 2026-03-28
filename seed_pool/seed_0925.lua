local t = {a = "1", b = "2"}
t[1] = "3"
t["c"] = 4
t[1] = t[1] + 1
for k, v in pairs(t) do
if type(v) == "number" then
t[k] = tostring(v)
end
end
print(t[1], t.a, t.b, t.c)