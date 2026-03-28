local t = {}
t[t] = "A"
print(type(t[t]))
local i = 0
while i < 10 do
i = i + 1
t[i] = i * 2
print(type(t[i]))
local s = tostring(i)
t[s] = "A"
print(type(t[s]))
t[i] = s
print(type(t[i]))
end