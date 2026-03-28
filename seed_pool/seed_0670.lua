local t = {}
t["123"] = 123
t[123] = "123"
for i = 1, 10 do
if type(t[i]) == "number" then
t[i] = tostring(t[i])
else
t[i] = tonumber(t[i])
end
end
print(t["1"])