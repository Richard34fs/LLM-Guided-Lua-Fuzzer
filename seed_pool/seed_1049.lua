t = {}
t["1"] = 1
t["1"] = t["1"] + 1
for i=1,10 do
t[i] = i .. ""
end
print(t["1"])