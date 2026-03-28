local t = {}
t["foo"] = 42
t[4] = "bar"
print(t["foo"] + #t[4])
for i = 1, 10 do
t[i] = i .. ""
end
print(t[6])