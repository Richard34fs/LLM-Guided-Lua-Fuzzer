local t = {}
t["10"] = 20
print(t[10])
for i = 1, 10 do
t[i] = i * 2
end
print(t["5"])
local x = "10" + 1
print(x)