local t = {a = "10", b = "20"}
local s = "30"
for i = 1, 10 do
t[s] = i
t["40"] = t.a + t.b
t.c = t.d
s = t.a
end