local t = {}
t["1"] = 1
t[1] = "1"
local s = ""
for i = 1, 10 do
if i % 2 == 0 then
s = s .. tostring(t[i])
else
s = s .. tostring(t["i"])
end
end
print(s)