t = {10}
t["foo"] = "bar"
print(t[1] + #t["foo"])
for i = 1, 10 do
t[i] = i
print(type(t[i]))
end