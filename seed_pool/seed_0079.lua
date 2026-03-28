local t = {a=1}
t["a"] = t["a"] + 1
for i=1,10 do
local s = "a" .. i
t[s] = t[s] or 0
t[s] = t[s] + 1
end
print(t.a, t.a1, t.a2)