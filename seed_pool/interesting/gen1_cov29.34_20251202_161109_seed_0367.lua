local t = {a=1}
t[t] = 2
print(t[t] + t.a)
local s = "1"
s = s + 1
print(s)
for i=1,3 do
    local b = false
    b = not b
    print(b)
end