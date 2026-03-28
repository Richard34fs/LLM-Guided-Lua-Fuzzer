local t = {}
t["20"] = "twenty"
t[20] = 20
for i = 1, 10 do
t[i] = i + i
t[i + 0.0] = i * i
end
print(t["20"])
print(t[20])
for i = 1, 10 do
print(t[i], t[i + 0.0])
end