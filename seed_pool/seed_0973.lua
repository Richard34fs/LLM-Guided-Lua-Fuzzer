local t = {}
t[1] = "one"
t["one"] = 1
for i = 1, #t do
if type(t[i]) == "number" then
t[i] = t[i] + 1
else
t[i] = t[i] .. "more"
end
end
print(t[1], t["one"])