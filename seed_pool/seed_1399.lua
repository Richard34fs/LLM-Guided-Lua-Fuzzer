local t = {}
t["123"] = 10
t[1] = "abc"
for k, v in pairs(t) do
if type(k) == "number" then
print(k * 2)
else
print(#k)
end
end