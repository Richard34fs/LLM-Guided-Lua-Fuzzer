local t = { "a", "b" }
t[1] = t
print(t[1][2])
local s = "1" + 1
print(s)
for i = 1, 3 do
local s = "a"
print(type(s))
s = 1
print(type(s))
end