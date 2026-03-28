local t = {a = 2}
t[3] = "3"
t["3"] = {}
for i = 1, 10 do
if type(t[i]) == "number" then
t[i] = t[i] + 1
else
t[i] = i * 2
end
end
print(t[1], t[2], t[3])