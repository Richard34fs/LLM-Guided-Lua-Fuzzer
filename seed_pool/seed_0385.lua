local t = {}
t["1"] = 2
t[1] = "3"
for i=1,10 do
if type(t[i]) == "number" then
t[i] = tostring(t[i])
else
t[i] = tonumber(t[i])
end
end
print(t["1"])