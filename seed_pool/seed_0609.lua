t = {}
t["foo"] = "bar"
print(t["foo"])
t[42] = "forty-two"
print(t[42])
for i = 1, 5 do
t[i] = i * 2
end
for k, v in pairs(t) do
print(k, v)
end