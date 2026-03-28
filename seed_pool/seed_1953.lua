local t = {}
t["10"] = 10
t[10] = 10
print(t["10"] + t[10])
for i = 1, 10 do
t[i] = i .. ""
end
for k, v in pairs(t) do
print(k, v)
end