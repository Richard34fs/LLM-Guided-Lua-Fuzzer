local t = {x=1}
local s = "2"
for i = 1, 10 do
t[s] = i
s = s + 1
t.x = t.x + 1
end
print(t[s], t.x)