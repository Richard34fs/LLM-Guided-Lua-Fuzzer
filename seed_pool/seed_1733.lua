local t = {}
t["123"] = "abc"
print(t[123])
for i = 1, 10 do
t[i] = i .. ""
print(t[i] + 1)
end