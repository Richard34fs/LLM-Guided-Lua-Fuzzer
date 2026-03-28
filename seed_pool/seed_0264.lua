local t = {}
t["foo"] = "bar"
t[42] = true
for i=1,5 do
t[i] = i*2
end
print(t["foo"])
print(t[42])
for i=1,5 do
print(t[i])
end