local t = {}
t["10"] = "ten"
t[1] = 10
for i=1,10 do
local a = i + "1"
print(a)
if t[i] then
t[i] = i * 2
end
end
print(t["10"])