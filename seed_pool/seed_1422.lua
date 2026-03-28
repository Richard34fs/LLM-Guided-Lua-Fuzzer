local t = {a = 2}
t[t] = 3
t["a"] = t["a"] + 1
for _ = 1, 10 do
local a = 1
a = "1"
a = (a + 1)
end