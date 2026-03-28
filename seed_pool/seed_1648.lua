local t = {a=1}
t[t] = 2
print(t[t])
local s = "1"
s = s + 1
print(s)
for i=1,10 do
i = i + 0.5
print(math.floor(i))
end