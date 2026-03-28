local t = {}
t["10"] = 10
t[10] = 10
t[10] = "10"
for i=1,10 do
t["1"] = t["1"] or 0
t["1"] = t["1"] + 1
end
print(t[1])