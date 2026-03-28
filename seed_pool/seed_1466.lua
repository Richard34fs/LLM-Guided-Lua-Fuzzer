local t = {a = "b", c = 2}
for i=1,10 do
t[i] = i
end
print(t["a"])
print(t[1] + t[9])
local s = "1"
print(s + 1)
local x = 5
x = x + 1
x = x + 1