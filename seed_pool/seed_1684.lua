local t = {}
t["foo"] = "bar"
t[42] = "life"
for i = 1, 10 do
t[i] = i * 2
end
print(t["foo"])
print(t[42])
for i = 1, 10 do
print(t[i])
end